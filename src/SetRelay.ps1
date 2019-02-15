Function SetRelay {
    [CmdletBinding(SupportsShouldProcess)]
    Param (
        [Parameter(Mandatory)]
        [String[]]$RemoteIPRanges
    )

    $mynetworks = ForEach ($network in $RemoteIPRanges) {
        If ($network.Length -gt 0) {
            "[$network]"
        }
    }

    If ($PSCmdlet.ShouldProcess("mynetworks=$mynetworks", 'Setting')) {
        $Result = postconf -e mynetworks=$($mynetworks -join ' ') 2>&1

        If ($LASTEXITCODE) {
            Throw "Error: $Result"
        }
    }
}