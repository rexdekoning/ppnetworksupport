using '../../packages/key-vaults/main.bicep' 

param enableTelemetry         = false
param name                    = ''
param location                = 'westeurope'
param enablePurgeProtection   = true
param enableSoftDelete        = true
param enableRbacAuthorization = true
param publicNetworkAccess     = 'Disabled'
param sku                     = 'standard'
param networkAcls             = {
                                    bypass: 'AzureServices'
                                    defaultAction: 'Deny'
                                }
param roleAssignments         = []
param secrets                 = []
