cask 'unity-lumin-support-for-editor' do
  version '2019.3.6f1,5c3fb0a11183'
  sha256 '2858b9aca9d651e1760d31c286e5263af8d24cf65116c8ff510c82e81620931b'

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity Lumin Build Support'
  homepage 'https://unity3d.com/unity/whats-new/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.LuminSupport'
end
