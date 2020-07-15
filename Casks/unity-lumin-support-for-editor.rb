cask 'unity-lumin-support-for-editor' do
  version '2019.4.3f1,f880dceab6fe'
  sha256 '3a9c73a223c0cf336a6210ed8f65e86ff136e99f09cd22660712eeff946f0f5f'

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity Lumin Build Support'
  homepage 'https://unity3d.com/unity/whats-new/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.LuminSupport'
end
