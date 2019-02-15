---
external help file: dxPostfix.PowerShell-help.xml
Module Name: dxPostfix.PowerShell
online version: https://github.com/dustindortch/dxPostfix.PowerShell/docs/dxPostfix.PowerShell.md
schema: 2.0.0
---

# Get-ExchangeOnlineIPAddresses

## SYNOPSYS
Retrieves list of IP Addresses for Exchange Online Protection from the Office 365 ReST endpoint

## SYNTAX
```
Get-ExchangeOnlineIPAddresses [-Uri <Uri>] [<CommonParameters>]
```

## DESCRIPTION
Retrieves list of IP Addresses for Exchange Online Protection from the Office 365 ReST endpoint.  The list defines the expected IP addresses that comprise the set of addresses for Exchange Online Protection.  This list can be used in firewall rules, connector ACLs, etc.

## EXAMPLES

### Example 1
```powershell
PS ~> Get-ExchangeOnlineIPAddresses | Select-Object -ExpandProperty ips

23.103.132.0/22
23.103.136.0/21
23.103.144.0/20
23.103.198.0/23
23.103.200.0/22
40.92.0.0/15
40.107.0.0/16
52.100.0.0/14
65.55.169.0/24
104.47.0.0/17
157.55.234.0/24
157.56.110.0/23
157.56.112.0/24
207.46.100.0/24
207.46.163.0/24
213.199.154.0/24
2a01:111:f400:7c00::/54
2a01:111:f403::/48
```

## PARAMETERS

### -Uri
Specifies the Office 365 ReST API enpoint URI.

```yaml
Type: Uri
Parameter Sets: (All)
Aliases: None

Required: False
Postition: Named
Default value: https://endpoints.office.com/endpoints/Worldwide
Accept pipline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### PSCustomObject

## NOTES

## RELATED LINKS

[Office 365 IP Address and URL Web service](https://docs.microsoft.com/en-us/office365/enterprise/office-365-ip-web-service)