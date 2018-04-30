cask 'unity' do
  version '2017.4.1f1,9231f953d9d3'
  sha256 '59b30dac3addf9f0a0234e8894f11f6f71c75ae18ad42abd0ff22c86160fb435'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity/Unity.app',
            rmdir:   '/Applications/Unity'
end
