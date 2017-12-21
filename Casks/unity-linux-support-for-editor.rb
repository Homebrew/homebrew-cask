cask 'unity-linux-support-for-editor' do
  version '2017.2.1f1,94bf3f9e6b5e'
  sha256 '4a3e5bd9395b817588286e758abff69575db9e67a428c319ed53c7bce6156c69'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.LinuxStandaloneSupport'
end
