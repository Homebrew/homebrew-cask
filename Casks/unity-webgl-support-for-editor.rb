cask 'unity-webgl-support-for-editor' do
  version '2019.1.5f1,0ca0f5646614'
  sha256 'e7d8f91f3097c2c2dbcadc9be39da35c8fc714f34d373da990c179d3becfb760'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WebGLSupport'
end
