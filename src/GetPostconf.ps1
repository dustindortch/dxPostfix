Function GetPostconf {
    Param (
        $Path = '/etc/postfix'
    )

    $Configuration = postconf -n -c $Path 2>&1

    If ($LASTEXITCODE) {
        Throw "Error: $Configuration"
    }

    $OutputHash = @{}

    ForEach ($Entry in $Configuration) {
        $Key,$Value = $Entry.Split('=',2).Trim()
        $Null = $OutputHash.Add($Key,$Value)
    }

    $OutputHash
}