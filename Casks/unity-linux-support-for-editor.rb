cask 'unity-linux-support-for-editor' do
  version '2017.1.0f3,472613c02cf7'
  sha256 '21b7304b4f47f75a41bcbef685f48ab6f28b0c89b7a8d1e499fe69b6ab766178'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.LinuxStandaloneSupport'
end
