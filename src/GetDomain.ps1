Function GetDomain {
    Param (
        [Parameter(Mandatory)]
        [hashtable]$Configuration
    )

    If (-Not $Configuration.mydomain) {
        Throw 'Error: no domain set'
    }

    $Configuration.mydomain
}