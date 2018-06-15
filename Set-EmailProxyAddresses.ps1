# Coded by hlopez
$ADUsers = Get-ADUser -SearchScope OneLevel -SearchBase "OU=Example,DC=Domain,DC=com" -Filter * -Properties EmailAddress, ProxyAddresses, DistinguishedName
foreach($User in $ADUsers)
{
	$ProxyAddress="SMTP:$($User.EmailAddress)"
	Set-AdUser -Identity $User.DistinguishedName -Clear ProxyAddresses
	Set-ADUser -Identity $User.DistinguishedName -Add @{Proxyaddresses=$ProxyAddress}
}