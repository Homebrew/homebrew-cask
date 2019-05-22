cask 'unity-download-assistant' do
  version '2019.1.3f1,dc414eb9ed43'
  sha256 'b9cb832c0477e0211acb0dc05572e6fd88866ed3ddf2b8dd8e4b5223e5478423'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
