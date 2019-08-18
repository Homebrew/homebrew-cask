cask 'unity-download-assistant' do
  version '2019.2.1f1,ca4d5af0be6f'
  sha256 '7b19749e5c49dd2d5213f8d5c4fe5ddeb46d61f5b32780fd562bae8108230ace'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
