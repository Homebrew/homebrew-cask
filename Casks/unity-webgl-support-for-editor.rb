cask 'unity-webgl-support-for-editor' do
  version '2017.2.1f1,94bf3f9e6b5e'
  sha256 '1379c44686729cd5cad56b6e358f57acc3fe27c9eebb4d386914da3d0e11cbc2'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WebGLSupport'
end
