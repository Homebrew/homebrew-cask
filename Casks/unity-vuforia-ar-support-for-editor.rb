cask 'unity-vuforia-ar-support-for-editor' do
  version '2018.3.12f1,8afd630d1f5b'
  sha256 'd727777229b5f9d39a7b0b0157a64646fd32d4359ad49b499cc166106f50135d'

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity Vuforia AR Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Vuforia-AR-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.VuforiaSupport'
end
