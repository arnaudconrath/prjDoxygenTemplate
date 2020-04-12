# Determine script location for PowerShell (source : https://www.autoitconsulting.com/site/scripting/get-current-script-directory-powershell-vbscript-batch/)
${ScriptDir} = Split-Path ${script:MyInvocation}.MyCommand.Path

# Run doxygen
Clear-Host
Set-Location -Path $ScriptDir
Copy-Item -Path $ScriptDir/doc/res/auto_redirect.html -Destination $ScriptDir/online_manual.html -Force 
doxygen.exe ${ScriptDir}/doc/doxyfile.ini 


