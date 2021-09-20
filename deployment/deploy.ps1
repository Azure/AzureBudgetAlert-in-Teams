$RGname="Azure-Budget3"
$region="westeurope"
$params = @{
    rgName = $RGname
    rgLocation = $region
    recipient = "aleki@microsoft.com"
    resourcePrefix = "AzBudget"
}
$deployName=("deploy-" + (Get-date -Format "yymmdd-hhmmss"))

New-AzResourceGroup -Name $RGName -Location $region -Force
New-AzDeployment -Name $deployName -Location $region -TemplateFile ./azuredeploy.json -TemplateParameterObject $params
