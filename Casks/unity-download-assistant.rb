cask 'unity-download-assistant' do
  version '2017.3.0f3,a9f86dcd79df'
  sha256 'd2e3d1184cdad2698dfcba83843fb2732727ff37aa01b66d689b5ece376b645e'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
