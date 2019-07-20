$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.masterpackager.com/installer/standard/Master_Packager_Std_19.4.1.0.msi'
$packageName = 'masterpackager'
$chocolateyPackageVersion = '19.4.1'

$packageArgs = @{
  packageName   = $packageName
  chocolateyPackageVersion = $chocolateyPackageVersion
  fileType      = 'MSI'
  url           = $url
  checksum      = '19C17949F54F67FC39AB000A36B0EA1CDDA617ECA75F93933A2B1F5717EC373A'
  checksumType	= 'sha256'
  softwareName  = 'MasterPackager*'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs