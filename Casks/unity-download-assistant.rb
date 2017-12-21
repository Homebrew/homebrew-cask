cask 'unity-download-assistant' do
  version '2017.2.1f1,94bf3f9e6b5e'
  sha256 'ac07ff052f1ab81bb59d2233e6639777b33de33bd7ed79701d4e427b13db9c0c'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
