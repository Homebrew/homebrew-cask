cask 'unity-download-assistant' do
  version '2019.1.4f1,ffa3a7a2dd7d'
  sha256 'd12589b4040ee886955bc199763cf19a7ad7f15813091061ed64cd7bb0f07350'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
