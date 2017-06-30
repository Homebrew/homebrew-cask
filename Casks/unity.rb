cask 'unity' do
  version '5.6.2f1,a2913c821e27'
  sha256 '7c3b7d0afdb9817c537ea2717d0d5dcab3219e3a521084a816196d4450c0b3f6'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
