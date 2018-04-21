cask 'unity-download-assistant' do
  version '2017.4.1f1,9231f953d9d3'
  sha256 '643bf3ea02ba6cd36a5271c20fce72aa50df106102d112b25a8f0a2e63fbb235'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
