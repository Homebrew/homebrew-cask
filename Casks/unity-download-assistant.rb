cask 'unity-download-assistant' do
  version '2019.1.5f1,0ca0f5646614'
  sha256 '04158a83bb637e6f5fa84e49dc98432880452177eb18d924f290102c0c50a9df'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
