cask 'unity' do
  version '2018.1.0f2,d4d99f31acba'
  sha256 '78ff20252c560547278e6c411f06d5ca4bc9312fcd79327a216dee2290601d6b'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity/Unity.app',
            rmdir:   '/Applications/Unity'
end
