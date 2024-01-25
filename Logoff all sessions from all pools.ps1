
# Mastering Azure Virtual Desktop Log Off User example
Import-Module Az.DesktopVirtualization


# Login into Azure with the managed identity of the automation account
try
{
    "Login into Azure with the managed identity of the automation account..."
    #Connect-AzAccount -Identity
}
catch {
    Write-Error "Login failed: $_"
    throw $_
}

# Start AVD Task

# Get all resource groups seen by the identity
$ResourceGroups = @(Get-AzResourceGroup)


# Enumerate through the resource groups
foreach ($ResourceGroup in $ResourceGroups)
{ 
    # Get all host pools in the resource group
    $HostPools = @(Get-AzWvdHostPool -ResourceGroupName $ResourceGroup.ResourceGroupName)

    # Enumerate through the host pools
    foreach ($HostPool in $HostPools)
    {
        Write-Output "Found host pool: $($HostPool.Name) in resource group $($ResourceGroup.ResourceGroupName)"
        $Sessions = @(Get-AzWvdUserSession -ResourceGroupName $ResourceGroup.ResourceGroupName -HostPoolName $HostPool.Name)
        Write-Output "The host pool $($HostPool.Name) has $($Sessions.Count) sessions"
        foreach ($Session in $Sessions)
        {
        $Session
            Write-Output "Logging of user $($Session.UserPrincipalName) from host pool $($HostPool.Name)"
            $SessionHost = $Session.Id.Split("/")[10]
            $SessionId = $Session.Id.Split("/")[12]
            Remove-AzWvdUserSession -ResourceGroupName $ResourceGroup.ResourceGroupName -HostPoolName $HostPool.Name -SessionHostName $SessionHost -Id $SessionId -Force
        }
    }
}
