cask 'unity-windows-support-for-editor' do
  version '2017.1.1f1,5d30cf096e79'
  sha256 '5ffbb2f04e67c836a82ecb1aab56b6cfb64db00e12f378398c54e05152ab15f4'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Windows Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WindowsStandaloneSupport'
end
