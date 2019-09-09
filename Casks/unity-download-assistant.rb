cask 'unity-download-assistant' do
  version '2019.2.4f1,c63b2af89a85'
  sha256 '593957a91c78270a3d05fd6334f99ba1cdf06b405e8b228ce922307ef4265aa0'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
