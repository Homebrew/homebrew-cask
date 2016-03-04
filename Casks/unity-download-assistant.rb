cask 'unity-download-assistant' do
  version '5.3.3f1,910d71450a97'
  sha256 'e57a5a6af3250a09a113187114375461ca97612e8265818582f8815398bc17ec'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'
  license :commercial

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
