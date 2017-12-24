cask 'unity-ios-support-for-editor' do
  version '2017.3.0f3,a9f86dcd79df'
  sha256 'd50d6c96b40660cd1539f8ca10204e6c399358baa20643058d2ad8571a17543a'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
