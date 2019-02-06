cask 'unity-vuforia-ar-support-for-editor' do
  version '2018.3.4f1,1d952368ca3a'
  sha256 '717ff3a1a240ace0ffd730c5e106e805696aee907e472f96d4bda94e88c56e2e'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity Vuforia AR Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Vuforia-AR-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.VuforiaSupport'
end
