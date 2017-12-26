cask 'unity-linux-support-for-editor' do
  version '2017.3.0f3,a9f86dcd79df'
  sha256 '2bd298a2f5ab966ba7df702c9f173fda2fe762afd3ddb451ce8c077f28cab19a'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.LinuxStandaloneSupport'
end
