cask 'unity-android-support-for-editor' do
  version '2017.1.1f1,5d30cf096e79'
  sha256 '03a6922a269d75e2de45e9b67f08c59e50d731886d4dd3b21a8f81503cab2612'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidSupport'
end
