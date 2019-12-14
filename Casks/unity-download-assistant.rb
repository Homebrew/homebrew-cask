cask 'unity-download-assistant' do
  version '2019.2.16f1,b9898e2d04a4'
  sha256 'cdeda117ecd496e2ed65b0963c62a865f9f1a32f67011a995debab9579cb9d10'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
