cask 'unity-standard-assets' do
  version '5.4.2f2,b7e030c65c9b'
  sha256 'ef75a58ad65ecc0dc5f978ba778d746bcd45509793cc26a601b6153f315f874f'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  name 'Unity Standard Assets'
  homepage 'https://unity3d.com/unity'

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.StandardAssets'
end
