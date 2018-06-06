cask 'unity-webgl-support-for-editor' do
  version '2018.1.3f1,a53ad04f7c7f'
  sha256 '4f4d3f191d2de341322c1e2a99a0bb6cff4d5da9e388b8fe55b2bdf7d4d21931'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WebGLSupport'
end
