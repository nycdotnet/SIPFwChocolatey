$name = 'SIP Framework';
$MSIPackageGUID = '{CB231615-ABA1-4DD7-B3C1-3DB6A3034465}';

try {
    $msiArgs = "/X$MSIPackageGUID /qn /norestart";
    Start-ChocolateyProcessAsAdmin "$msiArgs" 'msiexec'
} catch {
    Write-ChocolateyFailure $packageName $($_.Exception.Message);
    throw;
}

Write-ChocolateySuccess "$packageName";