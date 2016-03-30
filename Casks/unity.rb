cask 'unity' do
  version '5.3.3f1,910d71450a97'
  sha256 'aabf512a4b1df7fc1929fde3b653d45a3d7a5f8f876737966f6687264d8f97c4'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'
  license :commercial

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
