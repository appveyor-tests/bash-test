$sh_mapping = (cmd /c ftype sh_auto_file)
$sh_mapping
if ($sh_mapping -ne 'sh_auto_file=C:\msys64\usr\bin\bash.exe "%L" %*') { throw ".sh mapping is not set."; }
cmd /c echo echo "Hello, world!" > $env:temp\test.sh
Write-Host "test.sh content: "
Get-Content -Path $env:temp\test.sh
$sh_result = (echo cmd /c $env:temp\test.sh)
$sh_result
if ($sh_result -ne 'Hello, world!') { throw "Error running .sh script."; }
