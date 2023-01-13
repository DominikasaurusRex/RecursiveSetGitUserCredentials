$userName=$args[0]
$userMail=$args[1]

$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath

"Setting git information to. user.name: ${userName} user.email: ${userMail} for every project in ${dir}"

foreach($file in Get-ChildItem)
{
cd $dir
cd $file
git config user.name $userName
git config user.email $userMail
}

cd $dir