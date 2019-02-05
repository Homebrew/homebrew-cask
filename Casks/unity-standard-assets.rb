cask 'unity-standard-assets' do
  # Please update other unity-related pacakges as well
  # versions information can be found here
  # https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json
  version '2018.1.9f2,a6cc294b73ee'
  sha256 '39a4af2c1933597c3599f7f90563749bdb1286b8a149355618fe56a606aa0b1c'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity Standard Assets'
  homepage 'https://unity3d.com/unity'

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.StandardAssets'
end
