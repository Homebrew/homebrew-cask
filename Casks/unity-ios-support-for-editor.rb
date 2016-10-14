cask 'unity-ios-support-for-editor' do
  version '5.4.2f1,94e3a60ee258'
  sha256 '5f170b2abcacf174ddad8dcaf025eaad7ee7c5f72d989059ad90bcbaa1979dc6'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
