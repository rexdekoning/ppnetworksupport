using '../../packages/private-dns-zones/main.bicep'

param name                = 'privatelink.vaultcore.azure.net'
param virtualNetworkLinks = [
  {
    name: 'vNetLinkWEU'
    virtualNetworkResourceId: readEnvironmentVariable('VNETWEUID')
    registrationEnabled: false
  }
  {
    name: 'vNNetLinkNEU'
    virtualNetworkResourceId: readEnvironmentVariable('VNETNEUID')
    registrationEnabled: false
  }
]
