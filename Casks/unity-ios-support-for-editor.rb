cask 'unity-ios-support-for-editor' do
  version '2018.1.3f1,a53ad04f7c7f'
  sha256 'f10b87cc9e7d1233fbd16793621f5c34484dd5b8cfc52c0ce7a172135b33b988'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
