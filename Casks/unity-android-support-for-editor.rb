cask 'unity-android-support-for-editor' do
  version '2019.4.3f1,f880dceab6fe'
  sha256 '068703257e6f4ed83e981c3579816c064c3f26c6f2ddd1fef2bb13c6c9010070'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidPlayer'
end
