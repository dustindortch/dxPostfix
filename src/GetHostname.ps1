Function GetHostname {
    Param (
        [Parameter(Mandatory)]
        [hashtable]$Configuration
    )

    If (-Not $Configuration.myhostname) {
        Throw 'Error: no hostname set'
    }

    $Configuration.myhostname
}