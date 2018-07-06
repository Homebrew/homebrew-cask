cask 'unity' do
  version '2018.1.7f1,4cb482063d12'
  sha256 'a3a391cd2ad471145902bc564f78a8f540705b0c33b1128ace0c6c08ad688e29'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity/Unity.app',
            rmdir:   '/Applications/Unity'
end
