$sh_mapping = (cmd /c ftype sh_auto_file)
$sh_mapping
if ($sh_mapping -ne 'sh_auto_file=C:\msys64\usr\bin\bash.exe "%L" %*') { throw ".sh mapping is not set."; }
echo "Hello, world!" > %temp%\test.sh
$sh_result = (cmd /c $env:temp\test.sh)
$sh_result
if ($sh_result -ne 'Hello, world!') { throw "Error running .sh script."; }
