cask 'unity-linux-support-for-editor' do
  version '2017.1.1f1,5d30cf096e79'
  sha256 '15ddf1bcd1f614dfee9d8d60342133808449fa4b66ca1117a914fa7758a22c7a'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.LinuxStandaloneSupport'
end
