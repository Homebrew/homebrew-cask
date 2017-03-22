cask 'unity-webgl-support-for-editor' do
  version '5.5.2f1,3829d7f588f3'
  sha256 '8b4dbca202a16270e614e2425d62d3fbe2b36c1fc46604dfdb25f3078a3f7590'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WebGLSupport'
end
