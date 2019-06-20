cask 'unity-download-assistant' do
  version '2019.1.7f1,f3c4928e5742'
  sha256 '56857cecef94ba43c758a4309f788081285d2e81f0d2b6a7f4349e82299931f9'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
