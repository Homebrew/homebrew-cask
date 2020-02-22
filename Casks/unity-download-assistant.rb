cask 'unity-download-assistant' do
  version '2019.3.2f1,c46a3a38511e'
  sha256 'd87bb07acba10b03fdb8d56a1c8de6cc2d2a7efb82025ee88f97e4c1215c77a6'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
