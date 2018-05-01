cask 'unity-ios-support-for-editor' do
  version '2017.4.1f1,9231f953d9d3'
  sha256 '1be9cca65e6bcdbd03582ca59503a72c8cdab9f46c5bb137eb46bbcdf4e85894'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
