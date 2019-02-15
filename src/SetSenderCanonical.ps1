Function SetSenderCanonical {
    [CmdletBinding(SupportsShouldProcess)]
    Param (
        [string]$Filename = 'sender_canonical',
        $Path = '/etc/postfix'
    )

    If ($PSCmdlet.ShouldProcess("sender_canonical_maps=regexp:${Path}/${Filename}", 'Setting')) {
        $Result = postconf -e sender_canonical_maps=regexp:${Path}/${Filename} 2>&1

        If ($LASTEXITCODE) {
            Throw "Error: $Result"
        }
    }
}