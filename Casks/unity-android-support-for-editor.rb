cask 'unity-android-support-for-editor' do
  version '5.3.3f1,910d71450a97'
  sha256 '06b9efa7e2f01c91b4ef64535e0d1a9ef87bbfca9e6064b71ebdfce999aa7e0a'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'
  license :commercial

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidSupport'
end
