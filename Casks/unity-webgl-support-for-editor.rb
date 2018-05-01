cask 'unity-webgl-support-for-editor' do
  version '2017.4.1f1,9231f953d9d3'
  sha256 '9ee953f69760b94d0efa01bd58a3453f21c5c3ce5b7608726e0238cc0d90c320'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WebGLSupport'
end
