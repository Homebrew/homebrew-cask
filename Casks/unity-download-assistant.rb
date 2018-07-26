cask 'unity-download-assistant' do
  version '2018.2.1f1,1a9968d9f99c'
  sha256 'b6aaedd4c57e5dca599b1be87380bcf17b8372f6af09ef560f0c76abe1f365e1'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
