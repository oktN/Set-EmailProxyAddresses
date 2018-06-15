# Set-EmailProxyAddresses
Powershell script that copy the value of the attribute "EmailAddress" to "ProxyAddresses" in a given OU in AD
#### Usage
In order to use this script to set the value of the attribute "ProxyAddresses" for all users in a given OU, please ensure that:
* You have to set the "EmailAddress" value to the Office365 user e-mail address.
* Edit the first line of the script with the distinguished name ("DistinguishedName") of the target OU.
* Remember that the original "ProxyAddress" values will be cleaned in order to have ONLY the e-mail address. (You can comment out the -Clear fragged line)