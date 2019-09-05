cask 'unity-windows-support-for-editor' do
  version '2019.2.3f1,8e55c27a4621'
  sha256 '3862fa44560100a9e6666ec522b56d581878092bef6659b0f2b1e122a0f9b67d'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Mono-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity Windows (Mono) Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Windows-Mono-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WindowsStandaloneSupport'
end
