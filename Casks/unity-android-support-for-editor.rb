cask 'unity-android-support-for-editor' do
  version '2018.1.4f1,1a308f4ebef1'
  sha256 '4e21ddccca6bff448a94bc1ccb9000735ffcf840ae98a8115cae738412c3eb74'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidPlayer'
end
