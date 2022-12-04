param(
    [Parameter(Mandatory = $true)]
    [string]$ModuleName,

    [Parameter(Mandatory = $true)]
    [string]$ModuleVersion,

    [Parameter(Mandatory = $true)]
    [string]$Author
)

Import-Module -Name "DesktopTools" -Force -Verbose


# Set the parameters to pass to the function
$module = @{
    # The name of your module
    ModuleName    = "$($ModuleName)"
    # The version of your module
    ModuleVersion = "$($ModuleVersion)"
    # Your name
    Author        = "$($Author)"
    # The minimum PowerShell version this module supports
    PSVersion     = '7.0'
    # The functions to create blank files for in the Public folder
    Functions     = 'Remove-Files', 'Set-FilePath'
}
# Execute the function to create the new module
New-ModuleTemplate @module