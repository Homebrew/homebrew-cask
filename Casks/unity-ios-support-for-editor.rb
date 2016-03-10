cask 'unity-ios-support-for-editor' do
  version '5.3.3f1,910d71450a97'
  sha256 '00beddcfa79bafdddc6173099874ccc799772ade8524943c12c82b00ef4efa4f'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'
  license :commercial

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
