# Implement your module commands in this script.
$welcome_msg = "`n         Welcome to the Postfix Management Shell!`n`n"
$welcome_msg += "Full list of cmdlets: Get-Command`n"
$welcome_msg += "Only Postfix cmdlets: Get-PxCommand`n"

Write-Output $welcome_msg

$Scripts = Get-ChildItem -Path $PSScriptRoot\src\*.ps1
ForEach ($Script in $Scripts) {

    If ($Script.BaseName -like "*-*") {
        $FileName = $Script.VersionInfo.FileName
        $PercentComplete = [array]::IndexOf(@($Scripts),$Script) / $Scripts.Count * 100
        Write-Progress -Activity $($Script.BaseName) -Status 'Loading module' -PercentComplete $PercentComplete
        Start-Sleep -Milliseconds 500
    }

    . $FileName
}

# Export only the functions using PowerShell standard verb-noun naming.
# Be sure to list each exported functions in the FunctionsToExport field of the module manifest file.
# This improves performance of command discovery in PowerShell.
Export-ModuleMember -Function *-*
