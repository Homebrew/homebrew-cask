cask 'unity-windows-support-for-editor' do
  version '2017.3.1f1,fc1d3344e6ea'
  sha256 '85f547669e927f108aeda1124f3eac7ace968cb3ac1017d38f61375a4b5e0a87'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Windows Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WindowsStandaloneSupport'
end
