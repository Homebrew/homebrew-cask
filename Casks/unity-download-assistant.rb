cask 'unity-download-assistant' do
  version '2018.3.12f1,8afd630d1f5b'
  sha256 '503feda6dbca1f78c2fca5f882ed4e11693524ce683e11b785bf26a98050adeb'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
