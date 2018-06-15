cask 'unity-webgl-support-for-editor' do
  version '2018.1.4f1,1a308f4ebef1'
  sha256 '8f80fbeb6d9ffdb0ffc735f8101b40e3a6582e77b78dd36b804485ada07d3a41'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/update'
  name 'Unity WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WebGLSupport'
end
