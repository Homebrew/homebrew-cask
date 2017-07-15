cask 'unity-download-assistant' do
  version '2017.1.0f3,472613c02cf7'
  sha256 'b0f30d984884f1ac90072334a5e98f97f0e42ecb93dac7d592b26ec750769674'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
