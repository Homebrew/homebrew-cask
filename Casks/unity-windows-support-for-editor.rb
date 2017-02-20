cask 'unity-windows-support-for-editor' do
  version '5.5.0f3,38b4efef76f0'
  sha256 'f36f92e0b32c36a63540f7a1b6c03ad4aa4f94c849a8c12ec891c5c4298534a4'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Windows Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WindowsStandaloneSupport'
end
