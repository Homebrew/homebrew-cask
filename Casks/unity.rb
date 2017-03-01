cask 'unity' do
  version '5.5.2f1,3829d7f588f3'
  sha256 '9f12dfa47058ce024d3e776a6a5847cd3d2cac6ff3be7d0001999d8569cf0b86'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
