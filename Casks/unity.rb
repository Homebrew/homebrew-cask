cask 'unity' do
  version '5.4.0f3,a6d8d714de6f'
  sha256 '8e28dd3aa35d6b740900e308c11337f129948c98a8be3e56e2cf8ec26514a3a0'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'
  license :commercial

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
