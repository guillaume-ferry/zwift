$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://cdn.zwift.com/app/ZwiftSetup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'zwift*'
  checksum      = '0FA151B1ADF8813E93EFFD8154CBF3E8437D4E7D78E8AAE29DFAAF451B2D2028'
  checksumType  = 'sha256'

  silentArgs   = '/SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /NOCANCEL'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs