cask 'unity' do
  version '2017.3.0f3,a9f86dcd79df'
  sha256 '65c4a2865d4e2d01cd08358dcca1a95537a882a17288deeb4439558ddb126c77'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
