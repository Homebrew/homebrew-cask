cask 'unity-windows-support-for-editor' do
  version '2019.3.11f1,ceef2d848e70'
  sha256 'd2c22cafd5a3b054e38511802b581e8ffacc4ad1ed34139b4e6432b7d48328b5'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Mono-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity Windows (Mono) Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Windows-Mono-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WindowsStandaloneSupport'
end
