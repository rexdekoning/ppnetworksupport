using '../../packages/virtual-networks/main.bicep'

param enableTelemetry = false
param addressPrefixes = [
  concat(readEnvironmentVariable('ADDRESSPREFIX'), '192/26')
]
param name            = ''
param dnsServers      = []
param subnets         = [
  {
    name: readEnvironmentVariable('SNETPPNEU')
    addressPrefix: concat(readEnvironmentVariable('ADDRESSPREFIX'), '192/26')
    networkSecurityGroupResourceId: readEnvironmentVariable('NSGID2')
    delegation: 'Microsoft.PowerPlatform/enterprisePolicies'
    privateEndpointNetworkPolicies: 'Disabled'
    privateLinkServiceNetworkPolicies: 'Disabled'
    routeTableResourceId:''
  }
]
param tags            = {}

