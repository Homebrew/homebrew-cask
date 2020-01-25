cask 'unity-webgl-support-for-editor' do
  version '2019.2.19f1,929ab4d01772'
  sha256 'e66e0b6f01a50d9c41c523f17034de661b59ea0038405fdc6e048f9171c29f65'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WebGLSupport'
end
