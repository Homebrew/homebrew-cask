cask 'unity-download-assistant' do
  version '2019.3.1f1,89d6087839c2'
  sha256 '6b8343bed77f8070246abf6015853a08588b3f2a5bf90f5bd045ddda859fe3af'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
