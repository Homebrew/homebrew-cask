cask 'unity-download-assistant' do
  version '2019.1.2f1,3e18427e571f'
  sha256 'ab4354adbe8352116f924fde978e96572fc63716e92323221a9e77fada470a28'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
