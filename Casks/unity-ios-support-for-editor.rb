cask 'unity-ios-support-for-editor' do
  version '2019.3.13f1,d4ddf0d95db9'
  sha256 'ef39ecce48455966060ad63b9c543638a5c3fb64ed873c0425fce15372da4624'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
