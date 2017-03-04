cask 'unity-standard-assets' do
  version '5.5.0f3,38b4efef76f0'
  sha256 '30f4e459969f21bca96904b9cb113a1486be96418864a1ad0e476a8aa8a16fbf'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  name 'Unity Standard Assets'
  homepage 'https://unity3d.com/unity'

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.StandardAssets'
end
