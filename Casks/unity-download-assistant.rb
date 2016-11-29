cask 'unity-download-assistant' do
  version '5.4.3f1,01f4c123905a'
  sha256 'f5f6f455a8da143ed54aaee8c812d03861435c681bb86b026f9ec0eea8e1ea42'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
