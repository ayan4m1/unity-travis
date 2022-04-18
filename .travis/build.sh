#! /bin/sh

echo "Starting Unity build..."

xvfb-run --auto-servernum --server-args='-screen 0 640x480x24' \
$UNITY_INSTALL_DIR/Editor/Unity \
  -batchmode \
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
