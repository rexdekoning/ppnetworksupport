/* Parameters */
@description('Environment')
param environment string = '01'

@minLength(1)
@description('Location for all resources')
param location string


// Array of objects with the following structure:
/*
{
  id: 'string'
  subnet: {
    name: 'string'
  }
}
*/
@description('Array of objects with the following structure: { id: string; subnet: { name: string; } }')
param vnetSubnets array

/* Resources */
// Enterprise Policy for networkInjection
resource enterprisePolicy 'Microsoft.PowerPlatform/enterprisePolicies@2020-10-30-preview' = {
  name: 'ep-${location}-${environment}'
  location: location
  kind: 'NetworkInjection'
  properties: {
    networkInjection: {
      virtualNetworks: vnetSubnets
    }
  }
}

/* Outputs */
output enterprisePolicyId string = enterprisePolicy.id
output enterprisePolicyName string = enterprisePolicy.name
