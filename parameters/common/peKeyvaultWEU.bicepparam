using '../../packages/private-endpoints/main.bicep'

param name                          = ''
param subnetResourceId              = ''
param privateLinkServiceConnections = [
  {
    name: 'kvPLS'
    properties: {
      privateLinkServiceId: readEnvironmentVariable('KVWEUID')
      groupIds: [
        'vault'
      ]
    }
  }
]

param privateDnsZoneGroup           = {
  name: 'default'
  privateDnsZoneGroupConfigs: [
    {
      name: 'config'
      privateDnsZoneResourceId: readEnvironmentVariable('KVZONEID')
    }
  ]
}
