cask 'unity' do
  version '5.4.3f1,01f4c123905a'
  sha256 'ff29328600996fbe8dff7be1b8a89ce0df6744d66a54480d7b04f232daa46757'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
