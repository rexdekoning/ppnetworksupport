# ppnetworksupport
POC Azure DevOps Pipeline to Create Network Injection from PowerPlatform to Azure

#Requirements

See: https://learn.microsoft.com/en-us/power-platform/admin/vnet-support-setup-configure?tabs=new

The PowerPlatform Enviroment must be a Managed Environment

IAM can be approved but for this POC script the account running the pipeline needs the following rights:
- For PowerPlatform the Power Platform Administrator Rols
- For Azure the owner role (Normally this could be less, but in this POC we are also assigning rights)

For this POC we are using the Power Platform region Europe. There we must choose westeurope and northeurope as the locations to deploy the vNets

List of Power Platform supported regions and the regions to use in Azure:
https://learn.microsoft.com/en-us/power-platform/admin/vnet-support-overview#supported-regions
