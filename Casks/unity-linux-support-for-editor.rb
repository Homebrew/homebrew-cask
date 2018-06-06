cask 'unity-linux-support-for-editor' do
  version '2018.1.3f1,a53ad04f7c7f'
  sha256 'c3ebf0935f22c7836b8805d1281554cc4130ed2334678ed90329e1719e09d199'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.LinuxStandaloneSupport'
end
