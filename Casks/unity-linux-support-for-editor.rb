cask 'unity-linux-support-for-editor' do
  version '2017.3.1f1,fc1d3344e6ea'
  sha256 '58e7166b0d354cfb82e37bbc07b790cf3d295416479f8ee52ec1b41bc5959da8'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.LinuxStandaloneSupport'
end
