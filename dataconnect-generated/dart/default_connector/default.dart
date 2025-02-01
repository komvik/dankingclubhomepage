library default_connector;

class DefaultConnector {
  static ConnectorConfig connectorConfig = ConnectorConfig(
    'us-central1',
    'default',
    'dankingclubhomepage',
  );

  DefaultConnector({required this.dataConnect});
  static DefaultConnector get instance {
    return DefaultConnector(
        dataConnect: FirebaseDataConnect.instanceFor(
            connectorConfig: connectorConfig,
            sdkType: CallerSDKType.generated));
  }

  FirebaseDataConnect dataConnect;
}

class CallerSDKType {
  static var generated;
}

class FirebaseDataConnect {
  static instanceFor(
      {required ConnectorConfig connectorConfig, required sdkType}) {}
}

class ConnectorConfig {
  ConnectorConfig(String s, String t, String u);
}
