cask 'unity-android-support-for-editor' do
  version '2017.3.0f3,a9f86dcd79df'
  sha256 '8a74ef8af15dc5d12d37ceb288a9675ddca285bd2daf02e600fcbe736681e865'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidSupport'
end
