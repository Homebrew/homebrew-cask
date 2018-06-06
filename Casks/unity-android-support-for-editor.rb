cask 'unity-android-support-for-editor' do
  version '2018.1.3f1,a53ad04f7c7f'
  sha256 'ea5dba30ae12a4d571d449d55c4d37a9539273840d212ce18eb189cd33525e49'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidPlayer'
end
