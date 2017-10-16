cask 'unity-ios-support-for-editor' do
  version '2017.2.0f3,46dda1414e51'
  sha256 'c3e2c8601e3624e23d897cc969e6c865d605450209ce047bd6cc75b5250e7170'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
