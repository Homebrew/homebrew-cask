cask 'unity-ios-support-for-editor' do
  version '5.5.0f3,38b4efef76f0'
  sha256 'd79c39acd653d35c2e34df4636ccbd957e8f1ca0a137309d9cbd07227d8c447d'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
