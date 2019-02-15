Function SetDomain {
    Param (
        [Parameter(Mandatory)]
        [string]$Domain
    )

    $Result = postconf -e mydomain=$Domain 2>&1

    If ($LASTEXITCODE) {
        Throw "Error: $Result"
    }
}