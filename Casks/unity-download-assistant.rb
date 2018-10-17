cask 'unity-download-assistant' do
  version '2018.2.12f1,0a46ddfcfad4'
  sha256 'aca905b101f93ef85fc5a94f67e694a404a44e0392c1587e8648c2763946598e'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
