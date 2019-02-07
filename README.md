# dxPostfix.PowerShell
"Postfix Management Shell" written in PowerShell Core for Linux

## Overview

I primarily focus on all things "Microsoft Cloud", but have considerable Linux experience in my past.  Postfix is a great tool to add to the arsenal because it can facilitate some specific mail routing scenarios that can be encountered.  The goal of this module is to provide those familiar with PowerShell and the Exchange Management Shell a nice hopping off point and deliver some specific outcomes.

## Goals

* Basic configuration - set hostnames, domain names, certificates, etc.
* Smart host relaying - set up to relay through Exchange Online Protection, without authentication
* Accept mail from Exchange Online - pull the list of IP Addresses for Exchange Online Protection
* Address rewriting - simplify the setup of address rewriting rules
* Sender based routing

## Principals

* Reusable code
* Clean code
* Help-driven and Test-driven development
* Unix-ized code - small single purpose functions (likely not exported) with UX functions that operate similarly to the Exchange Management Shell

## Development Environment

I am writing this in Visual Studio Code on Windows but testing the code in an RHEL virtual machine on Azure IaaS.  This creates some challenges because I am using this with Azure credit that I receive for dev/testing purposes and I cannot make outbound SMTP connections.  Once I get to the point of testing, I will likely load it on a Pay-as-you-go VM.  I am using a Standard B1s VM as it is the least expensive ($8/month), which should be rather inexpensive if I turn it off when not used.