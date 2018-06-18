cask 'unity-standard-assets' do
  version '2018.1.5f1,732dbf75922d'
  sha256 '86b301a9fd4f14cdd4b7c9a3e425bfc4a735dcdad7282f32c854e24fdcf480c6'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity Standard Assets'
  homepage 'https://unity3d.com/unity'

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.StandardAssets'
end
