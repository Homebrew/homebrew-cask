cask 'unity-windows-support-for-editor' do
  version '2019.2.8f1,ff5b465c8d13'
  sha256 '5ef4974f453dc2df45cbe45d01acf21bd4c42bc0d85dba81ef8b3d6c3c08102e'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Mono-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity Windows (Mono) Build Support'
  homepage 'https://unity3d.com/unity/whats-new/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Windows-Mono-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WindowsStandaloneSupport'
end
