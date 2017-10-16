cask 'unity-standard-assets' do
  version '2017.2.0f3,46dda1414e51'
  sha256 'cc4db99b7ccac84040e53478045cba3d8272f27528a927e0e563f7ee0395e0d6'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  name 'Unity Standard Assets'
  homepage 'https://unity3d.com/unity'

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.StandardAssets'
end
