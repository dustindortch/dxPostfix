Function SetHostname {
    Param (
        [string]$Hostname
    )

    $Result = postconf -e myhostname=$Hostname 2>&1

    If ($LASTEXITCODE) {
        Throw "Error: $Result"
    }
}