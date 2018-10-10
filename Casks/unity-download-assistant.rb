cask 'unity-download-assistant' do
  version '2018.2.11f1,38bd7dec5000'
  sha256 '71b4d3446aafeec9c29ee3bc868690e988ade0e52b05cec33a32924b765fc7ee'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
