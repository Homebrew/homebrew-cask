cask 'unity-ios-support-for-editor' do
  version '2018.1.0f2,d4d99f31acba'
  sha256 'd92a030e233b6efe18569488094985a2e2082c1b6785bfef49c197eda9908095'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
