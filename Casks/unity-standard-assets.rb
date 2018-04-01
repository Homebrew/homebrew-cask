cask 'unity-standard-assets' do
  version '2017.3.1f1,fc1d3344e6ea'
  sha256 '6caa54b4d194f1763cdea47f6eea1afb60bacf7209f7d6e55be41c943d245123'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  name 'Unity Standard Assets'
  homepage 'https://unity3d.com/unity'

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.StandardAssets'
end
