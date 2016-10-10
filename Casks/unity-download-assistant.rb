cask 'unity-download-assistant' do
  version '5.3.5f1,960ebf59018a'
  sha256 '4eda3cd17f145775c420edf44164e3f33cbb14ec0151b328bb249729635e7793'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
