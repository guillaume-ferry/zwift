$ErrorActionPreference = 'Stop'
$url = 'https://cdn.zwift.com/app/ZwiftSetup.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url            = $url
  softwareName   = 'zwift*'
  checksum       = 'C5FF9429E15EF9A3955FEFDCFA9704F0CD8874F2B03D58869FEFE33BA00EB257'
  checksumType   = 'sha256'
  silentArgs     = '/SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /NOCANCEL'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
