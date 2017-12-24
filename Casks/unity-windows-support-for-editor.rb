cask 'unity-windows-support-for-editor' do
  version '2017.3.0f3,a9f86dcd79df'
  sha256 'b4b6c254f3bcb1c5f62dac44c187e6e4615c3758a2bd570727598e460d325c98'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Windows Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WindowsStandaloneSupport'
end
