cask 'unity-ios-support-for-editor' do
  version '5.5.2f1,3829d7f588f3'
  sha256 'bad75ba7392a981a2c01136b74889e306004a2c52e678528bd7e4b4d05e086c1'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
