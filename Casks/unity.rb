cask :v1 => 'unity' do
  version '5.2.1f1'
  sha256 'b2fcde8b3ae7ef50984d61873939390bc5d5070acd3db132628c580d0135b6eb'

  url 'http://netstorage.unity3d.com/unity/44735ea161b3/UnityDownloadAssistant-5.2.1f1.dmg'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'
  license :commercial

  installer :manual => 'Unity Download Assistant.app'

  uninstall :pkgutil => 'com.unity3d.*'
end
