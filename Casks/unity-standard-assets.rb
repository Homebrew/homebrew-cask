cask 'unity-standard-assets' do
  version '2017.4.1f1,9231f953d9d3'
  sha256 '33e1da805d3b3653f9d96f57661981e50e2d0b1334402d0402975ce3ae97add0'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  name 'Unity Standard Assets'
  homepage 'https://unity3d.com/unity'

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.StandardAssets'
end
