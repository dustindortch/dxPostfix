Function SetDomain {
    [CmdletBinding(SupportsShouldProcess)]
    Param (
        [Parameter(Mandatory)]
        [string]$Domain
    )

    If ($PSCmdlet.ShouldProcess("mydomain=$Domain", 'Setting')) {
        $Result = postconf -e mydomain=$Domain 2>&1

        If ($LASTEXITCODE) {
            Throw "Error: $Result"
        }
    }
}