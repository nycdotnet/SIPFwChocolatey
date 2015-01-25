SIPFw Chocolatey Package
========================

This is a definition for a Chocolatey package for the Red Gate SIP Framework.

If someone at Red-Gate wishes to take ownership of this package, please just reach out to me.

### Update Checklist
  * Update version tag in `.nuspec`
  * Update copyright tag in `.nuspec`
  * Update releaseNotes tag in `.nuspec`
  * Update `$url` in `tools\chocolateyInstall.ps1`
  * Confirm `$MSIPackageGUID` in `tools\chocolateyUninstall.ps1`
  * Test:
    * `choco install sipfw -source "$pwd"`
	* `choco uninstall sipfw -source "$pwd"`
  * If current computer doesn't have NuGet command-line (just run `nuget` and see if it works), run `choco install nuget.commandline`.
  * When package tests succesfully and NuGet is working, get API info from https://chocolatey.org/account and run this:
  
```powershell

NuGet setApiKey YOUR_API_KEY -Source https://chocolatey.org/
choco push sipfw.NEW_VERSION_NUMBER.nupkg

```
