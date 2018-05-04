cask 'unity-standard-assets' do
  version '2018.1.0f2,d4d99f31acba'
  sha256 '6c4b9e8bb3ee9755b13f0dd51251cfdbcb4287028f51b2cab44b10eacf146e83'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  name 'Unity Standard Assets'
  homepage 'https://unity3d.com/unity'

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.StandardAssets'
end
