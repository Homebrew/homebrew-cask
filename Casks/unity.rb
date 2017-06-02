cask 'unity' do
  version '5.6.1f1,2860b30f0b54'
  sha256 '32a16ce4a0041fb3676d4335ef33e2d7ea601e29629c55c24ae8cb36cca8676c'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
