using '../../packages/virtual-networks/main.bicep'

param enableTelemetry = false
param addressPrefixes = [
  concat(readEnvironmentVariable('ADDRESSPREFIX'), '0/25')
  concat(readEnvironmentVariable('ADDRESSPREFIX'), '128/26')
]
param name            = ''
param dnsServers      = []
param subnets         = [
  {
    name: readEnvironmentVariable('SNETPPWEU')
    addressPrefix: concat(readEnvironmentVariable('ADDRESSPREFIX'), '0/26')
    networkSecurityGroupResourceId: readEnvironmentVariable('NSGID1')
    delegation: 'Microsoft.PowerPlatform/enterprisePolicies'
    privateEndpointNetworkPolicies: 'Disabled'
    privateLinkServiceNetworkPolicies: 'Disabled'
    routeTableResourceId:''
  }
  {
    name: readEnvironmentVariable('SNETSHWEU')
    addressPrefix: concat(readEnvironmentVariable('ADDRESSPREFIX'), '64/26')
    networkSecurityGroupResourceId: readEnvironmentVariable('NSGID3')
  } 
  {
    name: readEnvironmentVariable('SNETPEWEU')
    addressPrefix: concat(readEnvironmentVariable('ADDRESSPREFIX'), '128/26')
    networkSecurityGroupResourceId: readEnvironmentVariable('NSGID4')
  } 
]
param tags            = {}
