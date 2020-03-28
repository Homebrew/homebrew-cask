cask 'unity-android-support-for-editor' do
  version '2019.3.7f1,6437fd74d35d'
  sha256 'f0bfd98820233ccce1d091f80077e1a91444de58274a28ddab3f77b4ef5b153f'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidPlayer'
end
