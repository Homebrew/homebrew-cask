cask 'unity-vuforia-ar-support-for-editor' do
  version '2018.3.5f1,76b3e37670a4'
  sha256 'f4d798eb912a41f8d920989b2c59052f3ed97da3b074b0da3bdc8a89f812fda0'

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity Vuforia AR Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Vuforia-AR-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.VuforiaSupport'
end
