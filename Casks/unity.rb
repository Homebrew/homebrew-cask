cask 'unity' do
  version '5.5.0f3,38b4efef76f0'
  sha256 'ce59f52d10a4d8f85777aa9625f78ecacafe5f9c1c9e8f3e7aa226c6855fee3d'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
