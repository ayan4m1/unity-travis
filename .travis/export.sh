BUILD_DIR="$(pwd)/build"

if [ ! -d "${BUILD_DIR}" ]; then
  echo "No build output found!"
  exit 1
fi

cd "${BUILD_DIR}"
zip -r ""../build-$(date +%Y%m%d%H%M%S).zip" *
