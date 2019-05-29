cask 'unity-vuforia-ar-support-for-editor' do
  version '2019.1.4f1,ffa3a7a2dd7d'
  sha256 '57c37d11fb2708779e8a3dab47ec6c5a677599ec4d9a664aea9cc958e9398990'

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity Vuforia AR Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Vuforia-AR-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.VuforiaSupport'
end
