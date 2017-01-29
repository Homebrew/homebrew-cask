cask 'unity-download-assistant' do
  version '5.5.1f1,88d00a7498cd'
  sha256 'ae7f01b8406a5b57571ae49aca3e78e012a628d0ca83bfc2883dce492d4c88cc'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
