cask 'unity-linux-support-for-editor' do
  version '2018.2.0f2,787658998520'
  sha256 '0625460a31b2f44d409a52d39fb145b9f88f87999766715350b367f7cf0f9110'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.LinuxStandaloneSupport'
end
