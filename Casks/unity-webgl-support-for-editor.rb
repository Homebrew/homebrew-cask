cask 'unity-webgl-support-for-editor' do
  version '2018.1.0f2,d4d99f31acba'
  sha256 'c24ca52f86b3bbaeef6ee771528907aef6406e8eceeac8ccf8b1186b255d2eb0'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WebGLSupport'
end
