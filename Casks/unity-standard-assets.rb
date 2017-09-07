cask 'unity-standard-assets' do
  version '2017.1.0f3,472613c02cf7'
  sha256 '846d036c8a69ae8ef93633efef2cf19297fd015e0fe1bad92ca4700cae6c2305'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  name 'Unity Standard Assets'
  homepage 'https://unity3d.com/unity'

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.StandardAssets'
end
