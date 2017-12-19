cask 'unity-windows-support-for-editor' do
  version '2017.2.1f1,94bf3f9e6b5e'
  sha256 'ecc7f3a9c817789d5280eb4f85f6ce00033dc5e827d0c5799ff33c36001e0223'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Windows Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WindowsStandaloneSupport'
end
