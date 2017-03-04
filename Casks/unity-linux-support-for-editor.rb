cask 'unity-linux-support-for-editor' do
  version '5.5.0f3,38b4efef76f0'
  sha256 'fa76f2b509c825040a1466a3b9f2f7ae16eaea7124ad478a1b56d750d26e0cb5'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.LinuxStandaloneSupport'
end
