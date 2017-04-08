cask 'unity-android-support-for-editor' do
  version '5.6.0f3,497a0f351392'
  sha256 '8b59a00f4bd6d17ef5a64185fc9d53d9c6746d58e7431ae9c88ecf01157d8acc'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidSupport'
end
