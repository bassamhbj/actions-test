param rgLocation string = resourceGroup().location
param projectName string

var storageAccountName = '${projectName}straccount0225'

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' =  {
  name: storageAccountName
  location: rgLocation
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

output storageAccountName string = storageAccount.name
