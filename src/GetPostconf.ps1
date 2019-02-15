Function GetPostconf {
    Param (
        $Path = '/etc/postfix'
    )

    $Configuration = postconf -n -c $Path 2>&1

    If ($LASTEXITCODE) {
        Throw "Error: $Configuration"
    }

    ForEach ($Entry in $Configuration) {
        ConvertFrom-StringData -StringData $Entry
    }
}