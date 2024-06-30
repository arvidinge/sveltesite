$ErrorActionPreference="SilentlyContinue"
Stop-Transcript | out-null
$ErrorActionPreference = "Continue"
Start-Transcript -path .\deploy\log.txt -append

npm run build
sftp -b "deploy/sftpbatch" ubuntu@arvidinge.dev:/var/www/arvidinge.dev/

Stop-Transcript