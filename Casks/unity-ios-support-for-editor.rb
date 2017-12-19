cask 'unity-ios-support-for-editor' do
  version '2017.2.1f1,94bf3f9e6b5e'
  sha256 'da40632cea02d2342b5acf5123dd949f312b5a6fb71b22d3e7ecdfc4cbda9750'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
