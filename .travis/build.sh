#! /bin/sh

LICENSE_FILE="$(pwd)/.travis/Unity_v2021.x.ulf"

if [ ! -f "${LICENSE_FILE}" ]; then
  echo "WARNING: No license file found!"
else
  echo "Copying license file..."
  cp "${LICENSE_FILE}" "${UNITY_INSTALL_DIR}/"
fi

echo "Starting Unity build..."

xvfb-run --auto-servernum --server-args='-screen 0 640x480x24' \
$UNITY_INSTALL_DIR/Editor/Unity \
  -batchmode \
  -manualLicenseFile "${UNITY_INSTALL_DIR}/Unity_v2021.x.ulf" \
  -logFile /dev/stdout \
  -projectPath "$(pwd)/${UNITY_PROJECT_NAME}" \
  -username "${UNITY_USER_EMAIL}" \
  -password "${UNITY_USER_PASSWORD}" \
  -buildTarget StandaloneWindows64 \
  -customBuildTarget StandaloneWindows64 \
  -customBuildName "${UNITY_PROJECT_NAME}" \
  -customBuildPath "$(pwd)/build/win64" \
  -executeMethod BuildCommand.PerformBuild \
  -quit
