Function GetSenderCanonical {
    Param (
        [Parameter(Mandatory)]
        [hashtable]$Configuration
    )

    If (-Not $Configuration.sender_canonical_maps) {
        Throw 'Error: no relay networks set'
    }

    $Configuration.sender_canonical_maps
}