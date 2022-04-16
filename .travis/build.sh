#! /bin/sh

$UNITY_INSTALL_DIR/Editor/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile \
  -projectPath "$(pwd)/${UNITY_PROJECT_NAME}" \
  -username "${UNITY_USER_EMAIL}" \
  -password "${UNITY_USER_PASSWORD}" \
  -buildWindows64Player "$(pwd)/build/win64/${UNITY_PROJECT_NAME}.exe" \
  -quit
