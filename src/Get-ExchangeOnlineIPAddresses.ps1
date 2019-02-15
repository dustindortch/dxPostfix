Function Get-ExchangeOnlineIPAddresses {
    [CmdletBinding()]
    Param (
        $Uri = 'https://endpoints.office.com/endpoints/Worldwide'
    )

    $Uri = "${Uri}?ClientRequestId=b10c5ed1-bad1-445f-b386-b919946339a7&ServiceAreas=Exchange"

    (Invoke-RestMethod -Uri $Uri).Where({$_.id -eq 10})
}