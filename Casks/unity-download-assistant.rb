cask 'unity-download-assistant' do
  version '2018.2.2f1,c18cef34cbcd'
  sha256 'd3e6688a4f36108ee0d1ccfc96a10764cd38bf0c8dbaea50109a8acc5ba8da29'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
