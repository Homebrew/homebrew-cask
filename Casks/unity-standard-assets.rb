cask 'unity-standard-assets' do
  version '2018.1.3f1,a53ad04f7c7f'
  sha256 'b9e8869f45c9f4528d311d9a0eadd4d35afd9c0a565b7efd988738f8f6c4ffbb'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  name 'Unity Standard Assets'
  homepage 'https://unity3d.com/unity'

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.StandardAssets'
end
