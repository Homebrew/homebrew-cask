cask 'unity-ios-support-for-editor' do
  version '2017.3.1f1,fc1d3344e6ea'
  sha256 '29c62b3ef71b50933fad82e6f0b6d080206dabe90ab18c68d0b8503145f80240'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
