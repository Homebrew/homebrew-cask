cask 'unity' do
  version '5.6.0f3,497a0f351392'
  sha256 'd46dee16c4c6d7edf22d2af1ff33d78884934c3c341836bd84fd6f8780e8e604'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
