$RGname="Azure-Budget"
$region="westeurope"
$params = @{
    rgName = $RGname
    rgLocation = $region
    recipient = "aleki@microsoft.com"
    resourcePrefix = "Azure-Budget"
}
$deployName=("deploy-" + (Get-date -Format "yymmdd-hhmmss"))

New-AzResourceGroup -Name $RGName -Location $region -Force
New-AzDeployment -Name $deployName -Location $region -TemplateFile ./azuredeploy.json -TemplateParameterObject $params
