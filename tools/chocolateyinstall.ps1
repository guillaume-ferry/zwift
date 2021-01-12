$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://cdn.zwift.com/app/ZwiftSetup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'zwift*'
  checksum      = '628EBC628672DC1618E9DAC72B18E7E6ABD90DB6CA186E4CAF4080C08C77F8EA'
  checksumType  = 'sha256'

  silentArgs   = '/SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /NOCANCEL'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs