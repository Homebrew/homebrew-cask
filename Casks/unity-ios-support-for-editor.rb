cask 'unity-ios-support-for-editor' do
  version '5.4.0f3,a6d8d714de6f'
  sha256 '334cb86bb71a0fdf92455c9bb07506f94ed81a6b9b36b6a9dd0a4dfd15ef65c8'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'
  license :commercial

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
