cask 'unity-linux-support-for-editor' do
  version '2018.2.3f1,1431a7d2ced7'
  sha256 '87fbec4d7ef76e99212bd9d957d6c5ca61dcc4db6a0ca4f79074a25845e4e502'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.LinuxStandaloneSupport'
end
