cask :v1 => 'unity' do
  version '5.2.2f1'
  sha256 '1a810817712f4adea34894b3473b52a6bf2a0c79045edc8eb4ee8df3dd2f07fe'

  url 'http://netstorage.unity3d.com/unity/3757309da7e7/UnityDownloadAssistant-5.2.2f1.dmg'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'
  license :commercial

  installer :manual => 'Unity Download Assistant.app'

  uninstall :pkgutil => 'com.unity3d.*'
end
