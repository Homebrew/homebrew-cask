cask 'unity-download-assistant' do
  version '2019.3.12f1,84b23722532d'
  sha256 'a5f4933205e402339c6b94c64c505e93c72e62221e1dffdab3eb3ef5a19f026c'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
