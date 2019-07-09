cask 'unity-download-assistant' do
  version '2019.1.9f1,d5f1b37da199'
  sha256 '500957879b684aa063d6f4a0915fd06c0c598c42397fa2eaba2cd3f446b83365'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
