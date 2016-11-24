cask 'unity-ios-support-for-editor' do
  version '5.4.3f1,01f4c123905a'
  sha256 '7173308490775ec08317ab964c96488c9ac3ee0c72f3176ec1e667673b9bdd71'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
