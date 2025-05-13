#!/bin/bash
# zowe_operations.sh
# Convert username to lowercase
echo "I AM IN"
LOWERCASE_USERNAME=$(echo "$ZOWE_USERNAME" | tr '[:upper:]' '[:lower:]')
echo "lowercase username:" $LOWERCASE_USERNAME
# Check if directory exists, create if it doesn't
if ! zowe zos-files list uss-files "/z/$LOWERCASE_USERNAME/cobolcheck" &>/dev/null; then
echo "Directory does not exist. Creating it..."
zowe zos-files create uss-directory "/z/$LOWERCASE_USERNAME/cobolcheck" --host $ZOWE_HOST --user $ZOWE_USERNAME --password $ZOWE_PASSWORD
else
echo "Directory already exists."
fi
# Upload files
zowe zos-files upload dir-to-uss "./cobol-check" "/z/$LOWERCASE_USERNAME/cobolcheck" --recursive --binary-files "cobol-check-0.2.9.jar"  --host $ZOWE_HOST
# Verify upload
echo "Verifying upload:"
zowe zos-files list uss-files "/z/$LOWERCASE_USERNAME/cobolcheck"
