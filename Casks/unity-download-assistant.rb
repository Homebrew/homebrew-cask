cask 'unity-download-assistant' do
  version '2019.4.1f1,e6c045e14e4e'
  sha256 'edf00043cf7fee230c54c503e16f7654b12d83071974aabdd4081bd677990a18'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
