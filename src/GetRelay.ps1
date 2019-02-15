Function GetRelay {
    Param (
        [Parameter(Mandatory)]
        [hashtable]$Configuration
    )

    If (-Not $Configuration.mynetworks) {
        Throw 'Error: no relay networks set'
    }

    $Configuration.mynetworks -replace '\[|\]' -split ' '
}