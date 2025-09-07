@description('Name of the route table')
param name string

@description('Location of the route table')
param location string = resourceGroup().location

@description('Tags to apply to the route table')
param tags object = {}

resource routeTable 'Microsoft.Network/routeTables@2022-09-01' = {
  name: name
  location: location
  tags: tags
  properties: {
    disableBgpRoutePropagation: true
    routes: [
      {
        name: 'defaultRoute'
        properties: {
          addressPrefix: '0.0.0.0/0'
          nextHopType: 'VirtualAppliance'
          nextHopIpAddress: '10.150.0.68'
        }
      }
      {
        name: 'hubRoute'
        properties: {
          addressPrefix: '10.150.0.0/23'
          nextHopType: 'VirtualAppliance'
          nextHopIpAddress: '10.150.0.68'
        }
      }
    ]
  }
}

output routeTableId string = routeTable.id
