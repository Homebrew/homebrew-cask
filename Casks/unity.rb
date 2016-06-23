cask 'unity' do
  version '5.3.5f1,960ebf59018a'
  sha256 '4c94da9cd682a950f041b74769728d2977c67cf4915606d108ac50bc39af1365'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'
  license :commercial

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
