cask 'unity' do
  version '2019.1.3f1,dc414eb9ed43'
  sha256 '4fb11f1bd42892a1dfd48fe695e08e0e1492567d12e8d92533b4d48a1f07142e'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg "Unity-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity'
end
