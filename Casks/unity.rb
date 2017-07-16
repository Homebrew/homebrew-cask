cask 'unity' do
  version '2017.1.0f3,472613c02cf7'
  sha256 '008140a181a0fdb6d1c3866ff8fa19eebf62b9dc2ccc3c1ba523db459c35a33a'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
