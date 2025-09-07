using '../../modules/enterprise-policy-module.bicep'

param location     = 'europe'
param environment  = ''
param vnetSubnets  = [
  {
    id: readEnvironmentVariable('VNETWEUID')
    subnet: {
        name: readEnvironmentVariable('SNETPPWEU')
    }
  }
  {
    id: readEnvironmentVariable('VNETNEUID')
    subnet: {
        name: readEnvironmentVariable('SNETPPNEU')
    }
  }
]
