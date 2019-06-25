cask 'unity' do
  version '2019.1.8f1,7938dd008a75'
  sha256 '803031318620d9683fbdee6560a291a2d4f4ed3dcf052543ba011508d3e2cb5f'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg "Unity-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity'
end
