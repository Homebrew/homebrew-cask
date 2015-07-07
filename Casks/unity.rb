cask :v1 => 'unity' do
  version '5.1.1f1'
  sha256 'd34a9c7c267307e8eaee3d124e1fe7d7b8f307760189fe46810e325e3a0312fc'

  url 'http://netstorage.unity3d.com/unity/2046fc06d4d8/UnityDownloadAssistant-5.1.1f1.dmg'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'
  license :commercial

  installer :manual => 'Unity Download Assistant.app'

  uninstall :pkgutil => 'com.unity3d.*'
end
