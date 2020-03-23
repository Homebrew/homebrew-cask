cask 'unity-windows-support-for-editor' do
  version '2019.3.6f1,5c3fb0a11183'
  sha256 '1fb4f0ba2ec2a9ab660e48744289c81d042ab009d2e757d432bc5c6e2f060406'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Mono-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity Windows (Mono) Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Windows-Mono-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WindowsStandaloneSupport'
end
