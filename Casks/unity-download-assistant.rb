cask 'unity-download-assistant' do
  version '2019.2.3f1,8e55c27a4621'
  sha256 '20b79c31bb245ab3a7dae807cd98afeabadd787e6ee1735529fcdeaa1c734466'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
