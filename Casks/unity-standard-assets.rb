cask 'unity-standard-assets' do
  version '2018.1.4f1,1a308f4ebef1'
  sha256 '4fd6bae28f6bdc0463c965316c18283accabc75f862016e56c04b19eeecba2c1'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  name 'Unity Standard Assets'
  homepage 'https://unity3d.com/unity'

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.StandardAssets'
end
