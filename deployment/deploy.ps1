$RGname="Azure-Budget"
$region="westeurope"
$params = @{
    rgName = $RGname
    rgLocation = $region
    recipient = "john@microsoft.com"
}
$deployName=("deploy-" + (Get-date -Format "yymmdd-hhmmss"))

New-AzResourceGroup -Name $RGName -Location $region
New-AzDeployment -Name $deployName -Location $region -TemplateFile ./azuredeploy.json -TemplateParameterObject $params
