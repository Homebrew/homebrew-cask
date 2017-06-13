cask 'unity-ios-support-for-editor' do
  version '5.6.1f1,2860b30f0b54'
  sha256 '5ed82b67913318fe3457bd915942af2f531664b324dd5d9ffbf7eb8f06b3a375'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
