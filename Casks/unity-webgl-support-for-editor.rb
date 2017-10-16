cask 'unity-webgl-support-for-editor' do
  version '2017.2.0f3,46dda1414e51'
  sha256 '352337b1d674f37a159a9f30045369dae1c7b80d0cc12dd27890bdf171ad4f93'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WebGLSupport'
end
