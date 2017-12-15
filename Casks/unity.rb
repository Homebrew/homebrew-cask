cask 'unity' do
  version '2017.2.1f1,94bf3f9e6b5e'
  sha256 'ac7f2801a4d95e770ee29e418017a55852757384363e07838865fb36673534a5'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
