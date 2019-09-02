cask 'unity-android-support-for-editor' do
  version '2019.2.2f1,ab112815d860'
  sha256 '4d9522c208ba9c1cd88a463f2d4c53bbcda89891767f4e2ab54bf1f546514e0d'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidPlayer'
end
