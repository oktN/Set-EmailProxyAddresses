# Set-EmailProxyAddresses
Powershell script that copy the value of the attribute "EmailAddress" to "ProxyAddresses" for each user in a given OU in AD
#### Usage
In order to run this script without issues, please ensure that:
* The value of "EmailAddress" matches with the Office365 account (E-mail address) for every single user of the target OU. 
* You have modified the first line of the script with the distinguished name ("DistinguishedName") of the target OU.

#### Additional considerations
* Remember that the original "ProxyAddress" values will be cleaned in order to have ONLY the e-mail address. (You can comment out the -Clear fragged line)
* This script only set the values to the users on the OU given, all sub-OUs will remain intact (It excludes all sub-OU thanks to the OneLevel tag in the very first line of the script).