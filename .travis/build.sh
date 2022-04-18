#! /bin/sh

LICENSE_FILE="$(pwd)/.travis/Unity_v2021.x.ulf"

if [ ! -f "${LICENSE_FILE}" ]; then
  echo "WARNING: No license file found!"
else
  echo "Copying license file..."
  cp "${LICENSE_FILE}" "${UNITY_INSTALL_DIR}/"
fi

echo "Starting Unity build..."

BUILD_DIR="$(pwd)/build"

mkdir -p "${BUILD_DIR}"

xvfb-run --auto-servernum --server-args='-screen 0 640x480x24' \
$UNITY_INSTALL_DIR/Editor/Unity \
  -batchmode \
  -manualLicenseFile "${UNITY_INSTALL_DIR}/Unity_v2021.x.ulf" \
  -logFile /dev/stdout \
  -projectPath "$(pwd)/${UNITY_PROJECT_NAME}" \
  -username "${UNITY_USER_EMAIL}" \
  -password "${UNITY_USER_PASSWORD}" \
  -buildWindows64Player "${BUILD_DIR}/game.exe" \
  -quit
