Function SetHostname {
    [CmdletBinding(SupportsShouldProcess)]
    Param (
        [Parameter(Mandatory)]
        [string]$Hostname
    )

    If ($PSCmdlet.ShouldProcess("myhostname=$Hostname", 'Setting')) {
        $Result = postconf -e myhostname=$Hostname 2>&1

        If ($LASTEXITCODE) {
            Throw "Error: $Result"
        }
    }
}