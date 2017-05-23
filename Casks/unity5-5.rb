cask 'unity' do
  version '5.5.3p3,3ff9bc5a03ff'
  sha256 '362ed854a27aa7d35c5533b6c3fa47baf23424d755e78549ae6cd3c07b7464d1'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
