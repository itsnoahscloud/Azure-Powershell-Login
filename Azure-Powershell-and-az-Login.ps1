# Login to Azure using Powershell and az
$adminUPN="MyEmailAddress@domain.com"

$userCredential = Get-Credential -UserName $adminUPN -Message "Type the password."

connect-msolservice -Credential $userCredential

connect-azaccount

az login --tenant 'abcd1234-ab12-1234-ab12-123456abcdef'

# Check PowerShell Subscription
get-azsubscription

# Check az account
az account list --output table

# Optional: Clear az accounts if needed
az account clear

# Optional: Set PowerShell Subscription to default
Set-AzContext -SubscriptionId "xxxx-xxxx-xxxx-xxxx"

# Optional: Set az Subscription to True (Set to default)
az account set --subscription "xxxx-xxxx-xxxx-xxxx"
