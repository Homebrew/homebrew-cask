cask 'unity' do
  version '2019.2.2f1,ab112815d860'
  sha256 '4c7c03df92d7e6a852c3f221fa42d49cc32435e313771f769f9f96b2b076201d'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg "Unity-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity'
end
