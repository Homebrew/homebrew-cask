cask 'unity-download-assistant' do
  version '2019.3.0f6,27ab2135bccf'
  sha256 '0ee26bd5261b4e3447f266190f0c564fe2584026ed69fdd8b4bc9b05146b4c6f'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
