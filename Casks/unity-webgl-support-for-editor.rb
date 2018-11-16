cask 'unity-webgl-support-for-editor' do
  version '2018.2.15f1,65e0713a5949'
  sha256 'e2ffd07256a54fc915458d15c3d8aa5e5dec7a4a373afdd23aa2e88bcac77f9f'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WebGLSupport'
end
