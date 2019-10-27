cask 'unity-linux-support-for-editor' do
  version '2019.2.10f1,923acd2d43aa'
  sha256 'cf9e243a40bf3a2cfb625e1d7543b3f23fcb4ce5d4fe91288aa99c36ff0f9a0f'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.LinuxStandaloneSupport'
end
