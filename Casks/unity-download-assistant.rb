cask 'unity-download-assistant' do
  version '2019.2.10f1,923acd2d43aa'
  sha256 '904f55979624e92da9a2f06285626cb81cdb7ff1cc1fc6163fff66aebeaab202'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
