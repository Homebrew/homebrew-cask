cask 'unity-ios-support-for-editor' do
  version '5.4.1f1,649f48bbbf0f'
  sha256 '12b06b9906e5a9d7e286ca27681e51192ec8169f2fd9e1d6975c2d2d83cbac8e'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
