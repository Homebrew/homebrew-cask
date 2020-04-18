cask 'unity-download-assistant' do
  version '2019.3.10f1,5968d7f82152'
  sha256 'c4c6a4c71071e0c0db8e26684a6555b35f441dcedf5a21c1263d654e2fe6d882'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
