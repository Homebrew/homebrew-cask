cask 'unity-standard-assets' do
  version '2017.3.0f3,a9f86dcd79df'
  sha256 '91a177a0d42871856bf39152c345375cf7dfbfb1d77c06b05b0ce2c764730b5d'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  name 'Unity Standard Assets'
  homepage 'https://unity3d.com/unity'

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.StandardAssets'
end
