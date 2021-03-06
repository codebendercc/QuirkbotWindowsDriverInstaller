rm -r s3_publish
mkdir s3_publish

cp "Quirkbot-Windows-Drivers-Installer.exe" "s3_publish/quirkbot-windows-drivers.exe"
cp "Quirkbot-Windows-Drivers-Installer.zip" "s3_publish/quirkbot-windows-drivers.zip"
cp "Quirkbot-Windows-Drivers-Only.zip" "s3_publish/quirkbot-windows-drivers-without-installer.zip"
aws s3 sync s3_publish s3://code.quirkbot.com/downloads --exclude *.DS_Store

rm -r s3_publish
mkdir s3_publish

cp Quirkbot-Windows-Drivers-Installer.exe s3_publish/quirkbot-drivers.exe
aws s3 sync s3_publish s3://code.quirkbot.com/install/windows --delete --exclude *.DS_Store
