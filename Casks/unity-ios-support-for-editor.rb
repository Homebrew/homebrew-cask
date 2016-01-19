cask 'unity-ios-support-for-editor' do
  version '5.3.1f1'
  sha256 '8de18e8b4703ea4b3f71c8e83d3751f1f568a680a8460cd134c1c6f22a323908'

  url "http://netstorage.unity3d.com/unity/cc9cbbcc37b4/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'
  license :commercial

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
