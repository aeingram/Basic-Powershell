$Users = (Get-LocalUser)
$Groups = (Get-LOcalGroup)

#$Users
Write-Output "Local Users"
foreach($user in $users)
{
    $user.Name + " " + $user.Enabled
}
Write-Output ""
Write-Output "Local Groups"
foreach($group in $groups)
{
    $group.Name
}