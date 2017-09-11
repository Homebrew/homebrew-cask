cask 'unity-standard-assets' do
  version '2017.1.1f1,5d30cf096e79'
  sha256 '988c57c6208930b69e5832e632bda6d11b04e66b8f64cc3bcb44b0283c800da2'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  name 'Unity Standard Assets'
  homepage 'https://unity3d.com/unity'

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.StandardAssets'
end
