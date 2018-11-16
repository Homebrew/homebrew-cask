cask 'unity-android-support-for-editor' do
  version '2018.2.15f1,65e0713a5949'
  sha256 '80cee35635cb02cbeca9926dd6d68ba02846407d7e2e88b15e5c80dd72f63ea0'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidPlayer'
end
