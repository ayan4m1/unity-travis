#! /bin/sh

if [ -f "${UNITY_INSTALL_DIR}/Editor/Unity" ]; then
  echo "Exiting because cached Unity install was found"
  exit 0
fi

curl --retry 5 -o UnitySetup https://download.unity3d.com/download_unity/602ecdbb2fb0/UnitySetup-2021.2.19f1

chmod a+x UnitySetup

yes | ./UnitySetup --unattended --components=Unity,Windows-Mono --install-location "${UNITY_INSTALL_DIR}"
