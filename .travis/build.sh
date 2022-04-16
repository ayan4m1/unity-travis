#! /bin/sh

ls $UNITY_INSTALL_DIR

$UNITY_INSTALL_DIR/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile \
  -projectPath "$(pwd)/${UNITY_PROJECT_NAME}" \
  -buildWindows64Player "$(pwd)/build/win64/${UNITY_PROJECT_NAME}.exe" \
  -quit \
  | tee "$(pwd)/build/win64.log"
