cask 'unity-ios-support-for-editor' do
  version '2017.1.0f3,472613c02cf7'
  sha256 '5f8086e93688c20c619acc6c4297a3c7a0484c485b495fb668c132307cf45e36'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
