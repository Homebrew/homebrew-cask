cask 'unity-download-assistant' do
  version '2018.1.5f1,732dbf75922d'
  sha256 'e2df6802839c1d059fa481c61918eebb8f631690b4568fa2f71349a9c9493bf3'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/update'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
