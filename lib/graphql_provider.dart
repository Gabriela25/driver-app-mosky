import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/*String get host {
  if (Platform.isAndroid) {
    return '10.0.2.2';
  } else {
    return 'localhost';
  }
}

final client = getClient(
  uri: "http://localhost:3002/graphql",
  subscriptionUri: "ws:localhost:3002/graphql",
);

final cache = GraphQLCache(store: InMemoryStore());

GraphQLClient getClient({
  required String uri,
  String? subscriptionUri,
}) {
  Link link = HttpLink(uri);

  if (subscriptionUri != null) {
    final WebSocketLink websocketLink = WebSocketLink(
      subscriptionUri,
      config: SocketClientConfig(
        autoReconnect: true,
        inactivityTimeout: Duration(seconds: 30),
      ),
    );

    // link = link.concat(websocketLink);
    link = Link.split((request) => request.isSubscription, websocketLink, link);
  }

  return GraphQLClient(
    cache: cache,
    link: link,
  );
}*/

ValueNotifier<GraphQLClient> clientFor(
  {required String uri, required String subscriptionUri, String? jwtToken}) {
  final WebSocketLink websocketLink = jwtToken != null
    ? WebSocketLink(subscriptionUri,
      config: SocketClientConfig(initialPayload: {"authToken": jwtToken}))
    : WebSocketLink(subscriptionUri);

  // Cliente HTTP personalizado con timeout de 20 segundos
  final httpClient = _TimeoutClient(const Duration(seconds: 20));

  final HttpLink httpLink = jwtToken != null
    ? HttpLink(uri, defaultHeaders: {"Authorization": "Bearer $jwtToken"}, httpClient: httpClient)
    : HttpLink(uri, httpClient: httpClient);

  final Link link =
    Link.split((request) => request.isSubscription, websocketLink, httpLink);
  final GraphQLCache cache = GraphQLCache(store: InMemoryStore());
  return ValueNotifier<GraphQLClient>(
  GraphQLClient(
    cache: cache,
    link: link,
    defaultPolicies: DefaultPolicies(
      query: Policies(fetch: FetchPolicy.noCache),
      mutate: Policies(fetch: FetchPolicy.noCache),
      subscribe: Policies(fetch: FetchPolicy.noCache))),
  );
}

// Cliente HTTP con timeout personalizado
class _TimeoutClient extends http.BaseClient {
  final Duration timeout;
  final http.Client _inner = http.Client();

  _TimeoutClient(this.timeout);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
  return _inner.send(request).timeout(timeout);
  }
}

/// Wraps the root application with the `graphql_flutter` client.
/// We use the cache for all state management.
class MyGraphqlProvider extends StatelessWidget {
  MyGraphqlProvider(
      {super.key,
      required this.child,
      required String uri,
      required String subscriptionUri,
      String? jwt, required Function(dynamic context, dynamic child) builder})
      : client = clientFor(
            uri: uri, subscriptionUri: subscriptionUri, jwtToken: jwt);

  final Widget child;
  final ValueNotifier<GraphQLClient> client;

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: child,
    );
  }
}
