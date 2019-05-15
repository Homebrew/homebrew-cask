cask 'unity-vuforia-ar-support-for-editor' do
  version '2019.1.2f1,3e18427e571f'
  sha256 'af71d5cbae124c68594c24f8d25d0349cd5064946bbe4d8dd361d3ee15a6ba7f'

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity Vuforia AR Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Vuforia-AR-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.VuforiaSupport'
end
