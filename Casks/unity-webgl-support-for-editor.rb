cask 'unity-webgl-support-for-editor' do
  version '2018.2.3f1,1431a7d2ced7'
  sha256 '50931ba47f5c9256aeed9d879fb94cc8078744d68683c03fa44c639d7a0e5b76'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WebGLSupport'
end
