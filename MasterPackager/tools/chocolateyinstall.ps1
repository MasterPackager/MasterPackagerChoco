$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.masterpackager.com/installer/standard/Master_Packager_Std_19.3.1.0.msi'
$packageName = 'masterpackager'
$chocolateyPackageVersion = '19.3.1'

$packageArgs = @{
  packageName   = $packageName
  chocolateyPackageVersion = $chocolateyPackageVersion
  fileType      = 'MSI'
  url           = $url
  softwareName  = 'MasterPackager*'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs