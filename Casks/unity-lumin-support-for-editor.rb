cask 'unity-lumin-support-for-editor' do
  version '2019.2.8f1,ff5b465c8d13'
  sha256 '4475a6ff876e4384677a21360977ce7af3305a41d72931835545676e14cc6c7b'
  
  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity Lumin Build Support'
  homepage 'https://unity3d.com/unity/'
  
  depends_on cask: 'unity'
  
  pkg "UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"
  
  uninstall pkgutil: 'com.unity3d.LuminStandaloneSupport'
end
