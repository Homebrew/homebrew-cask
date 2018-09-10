cask 'unity-download-assistant' do
  version '2018.2.6f1,c591d9a97a0b'
  sha256 '1998dcfe0db83a3e387f51584515b9f12e9daec8d05577c7c8686d8d392d7e50'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
