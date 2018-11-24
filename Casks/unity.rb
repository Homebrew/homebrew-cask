cask 'unity' do
  version '2018.2.17f1,88933597c842'
  sha256 'de6aa1b3d17774c21078f6ad8be3a72dae691a1e4c33654b6fe38fe148ed68de'

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
