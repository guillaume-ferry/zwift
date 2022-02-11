$ErrorActionPreference = 'Stop'
$url = 'https://cdn.zwift.com/app/ZwiftSetup.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url            = $url
  softwareName   = 'zwift*'
  checksum       = 'F51FCCD7FB49F65724CA403B8807621F1BE06D168D58AEDB4AF8F3FCDCBC3A6B'
  checksumType   = 'sha256'
  silentArgs     = '/SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /NOCANCEL'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
