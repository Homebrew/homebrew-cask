cask 'unity-download-assistant' do
  version '2018.1.0f2,d4d99f31acba'
  sha256 '5c9384222cd9f2f4d42fd354c3318e43231bdac72d1ddc8eb4893628363bd591'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
