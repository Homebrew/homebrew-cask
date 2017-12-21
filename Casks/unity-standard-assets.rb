cask 'unity-standard-assets' do
  version '2017.2.1f1,94bf3f9e6b5e'
  sha256 '410aa0ae0b4598aae6cf67050e732b9d1b95f52ba3f6571e490098e06446df87'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  name 'Unity Standard Assets'
  homepage 'https://unity3d.com/unity'

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.StandardAssets'
end
