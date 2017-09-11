cask 'unity' do
  version '2017.1.1f1,5d30cf096e79'
  sha256 '461a101910459e7ea4e884e28b8b442303d20b7c78e5ed610ce151ca6b4eb0a7'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
