$domainname = "" # Enter Domain Name like contoso.com
$OU = "" # Enter Organizational unit path. Example: "OU=Users, DC=contoso, DC=com"
$name = Read-Host -Prompt 'Enter user name: '
$surname = Read-Host -Prompt 'Enter user surname: '
$username = $name.substring(0,1) + $surname
$password = 'Qwerty123!' | ConvertTo-SecureString -AsPlainText -Force
New-ADUser -Name $surname', '$name -GivenName $name -samaccountname $username -Surname $surname -userprincipalname $username + "@" + $domainname  -DisplayName $surname', '$name -Path $OU -AccountPassword $Password -ChangePasswordAtLogon $True -Enabled $True
echo ' '
echo ' '
$message = 'User ' + $username + '@' + $domainname + ' with password "Qwerty123!" created.'
write-host $message