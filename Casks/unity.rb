cask 'unity' do
  version '2019.3.13f1,d4ddf0d95db9'
  sha256 '83b881289db5578b6f2610efd5f1dff9f65f1d5888b1b4c1d0856cd747f206d3'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg "Unity-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity'
end
