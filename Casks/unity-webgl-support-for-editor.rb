cask 'unity-webgl-support-for-editor' do
  version '2017.3.1f1,fc1d3344e6ea'
  sha256 'eec3a29b0dcf0aa4e7ad3243f4552534db5356cfdc936c1a185572f72d9f85c8'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WebGLSupport'
end
