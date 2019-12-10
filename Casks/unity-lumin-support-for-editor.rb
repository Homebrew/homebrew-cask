cask 'unity-lumin-support-for-editor' do
  version '2019.2.15f1,dcb72c2e9334'
  sha256 '480c360bc63246b69da137ed6ec63e3f2d6d36ed8311de6f093221b976c8c8d5'

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity Lumin Build Support'
  homepage 'https://unity3d.com/unity/whats-new/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.LuminSupport'
end
