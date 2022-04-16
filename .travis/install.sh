#! /bin/sh

curl --retry 5 -o UnitySetup https://download.unity3d.com/download_unity/602ecdbb2fb0/UnitySetup-2021.2.19f1

chmod a+x UnitySetup

yes | ./UnitySetup --unattended --components=Unity,Windows-Mono --install-location "${UNITY_INSTALL_DIR}"
