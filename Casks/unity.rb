cask 'unity' do
  version '2019.3.5f1,d691e07d38ef'
  sha256 '9d22b11b3087a5a4323ab944e2578b2f048aeb213e5d4126cb20d9ba0974fa8b'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg "Unity-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity'
end
