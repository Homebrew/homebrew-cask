cask 'unity-linux-support-for-editor' do
  version '2019.1.4f1,ffa3a7a2dd7d'
  sha256 'd96bc4a4c1a0eae4b360e35bd6514768e302b99e47336afe4125d665ce32689e'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.LinuxStandaloneSupport'
end
