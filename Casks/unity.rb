cask 'unity' do
  version '5.4.1f1,649f48bbbf0f'
  sha256 'aaeb770b200ded4dfca6a9dc5f4cdd5948841dd668cbad2a44b78f748f798203'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
