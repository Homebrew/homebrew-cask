cask 'unity-download-assistant' do
  version '2018.1.7f1,4cb482063d12'
  sha256 '5a2d6f5b6886de27a9ce5feaf5e7cd69433691bd5fb95b2d31e6faaf640fad90'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
