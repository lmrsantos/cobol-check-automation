#!/bin/bash
# zowe_operations.sh
# Convert username to lowercase
# LOWERCASE_USERNAME=$(echo "$Z_USER" | tr '[:upper:]' '[:lower:]')
# Check if directory exists, create if it doesn't
echo "host:" $ZOWE_HOST
# if ! zowe zos-files list uss-files "/z/$LOWERCASE_USERNAME/cobolcheck"  --host ${Z_HOST} --password $Z_PSW --user $Z_USER &>/dev/null; then
# echo "Directory does not exist. Creating it..."
# zowe zos-files create uss-directory /z/$LOWERCASE_USERNAME/cobolcheck --host $Z_HOST
# else
# echo "Directory already exists."
# fi
# # Upload files
# zowe zos-files upload dir-to-uss "./cobol-check" "/z/$LOWERCASE_USERNAME/cobolcheck" --host $Z_HOST --recursive --binary-files "cobol-check-0.2.9.jar"
# # Verify upload
# echo "Verifying upload..."
# zowe zos-files list uss-files "/z/$LOWERCASE_USERNAME/cobolcheck"
