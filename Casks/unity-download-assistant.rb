cask 'unity-download-assistant' do
  version '2019.1.12f1,f04f5427219e'
  sha256 '792fb578fd3c05ac5bb03f9ca3754aa79bea8d2a11045bc75ec8c7f8ca2d73ac'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
