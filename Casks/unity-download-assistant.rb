cask 'unity-download-assistant' do
  version '2019.3.7f1,6437fd74d35d'
  sha256 'fa6b2cfde4d2eaf6b3234b92ccc8045af717b722b5e731c5ef03f5ebac30986e'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
