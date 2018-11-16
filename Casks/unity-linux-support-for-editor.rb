cask 'unity-linux-support-for-editor' do
  version '2018.2.15f1,65e0713a5949'
  sha256 'c850b5a9b8f210e297b3b5cf225bec3badba5a52d425f0ab92165d1a02d7fbff'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.LinuxStandaloneSupport'
end
