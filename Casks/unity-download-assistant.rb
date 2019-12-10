cask 'unity-download-assistant' do
  version '2019.2.15f1,dcb72c2e9334'
  sha256 '6f2749b88188f34c60f4fe82058c2b316d6da11bd29c055a10186d8dd2602bc9'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
