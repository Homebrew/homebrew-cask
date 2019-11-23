cask 'unity-download-assistant' do
  version '2019.2.13f1,e20f6c7e5017'
  sha256 '826b6f2fbd13cb9a2ca387fe9e06c406bdaa94568813ab61015d44d89dcb672f'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
