cask 'unity-ios-support-for-editor' do
  version '2017.1.1f1,5d30cf096e79'
  sha256 'ff97af7d7b00b06c9e932ad372d96a0e7f0f36f16ebb053bae4ae1f819b6d4b4'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
