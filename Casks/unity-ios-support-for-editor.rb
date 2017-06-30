cask 'unity-ios-support-for-editor' do
  version '5.6.2f1,a2913c821e27'
  sha256 'd2b8c26504a617a8adc38ddb29af4d82a16b3db6f1431e2e90a02dce33c7c1ed'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
