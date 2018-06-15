cask 'unity-ios-support-for-editor' do
  version '2018.1.4f1,1a308f4ebef1'
  sha256 '19637cb9d6c3e205c085d7e90a67ce8e62c1637a0186f4ef26c30a1d902762c4'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
