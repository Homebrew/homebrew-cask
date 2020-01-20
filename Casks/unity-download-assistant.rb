cask 'unity-download-assistant' do
  version '2019.2.18f1,bbf64de26e34'
  sha256 'ec4ce6b598c5633c63e9765b1e36d74a7b49bebc4451c76480f0fda80a11579b'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
