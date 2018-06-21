cask 'unity-standard-assets' do
  version '2018.1.6f1,57cc34175ccf'
  sha256 '074a14a722502c0ed97fab66df728b270ed79627c88790f34d5a8cccf6081c2f'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity Standard Assets'
  homepage 'https://unity3d.com/unity'

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.StandardAssets'
end
