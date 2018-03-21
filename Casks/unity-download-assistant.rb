cask 'unity-download-assistant' do
  version '2017.3.1f1,fc1d3344e6ea'
  sha256 '4e50440ed9c0a18891b8de3b7c761ec535603447927dca727404fb037a04dcef'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
