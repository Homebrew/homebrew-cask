cask 'unity-webgl-support-for-editor' do
  version '2017.1.0f3,472613c02cf7'
  sha256 '1bb245b26608d17ec5f3db1071bbadda62113eae9ad0751e87a8238a1a7debfd'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WebGLSupport'
end
