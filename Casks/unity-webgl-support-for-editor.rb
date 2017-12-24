cask 'unity-webgl-support-for-editor' do
  version '2017.3.0f3,a9f86dcd79df'
  sha256 '71a6dcaf82c7734eb394109c1e6185eaf6e896a170bc4ce7876340ebdc84e9a3'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WebGLSupport'
end
