cask 'unity-android-support-for-editor' do
  version '2017.2.0f3,46dda1414e51'
  sha256 '58ee014bb314b743b9561bf816143f49ef0e53b119ed51c4c641f7cf1cce5255'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidSupport'
end
