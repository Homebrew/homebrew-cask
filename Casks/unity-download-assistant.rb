cask 'unity-download-assistant' do
  version '5.5.0f3,38b4efef76f0'
  sha256 'cdb79e499d5740e5fd52ff23a12f6ae0064a779e515d18ee25245c77b229b99f'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
