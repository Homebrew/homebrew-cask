cask 'unity-download-assistant' do
  version '2019.3.6f1,5c3fb0a11183'
  sha256 '00665192e5aaa490496b588011f1634dab6e3712533f1af19dcaf078f5b60010'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
