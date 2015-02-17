cask :v1 => 'unity' do
  version '4.6.2'
  sha256 'b6f4c7f7d6649d27ca36b99f9ef7ef703eba6cac3cda6f4f40eddf7b46daaf85'

  url "http://netstorage.unity3d.com/unity/unity-#{version}.dmg"
  homepage 'http://unity3d.com/unity/'
  license :commercial

  pkg 'Unity.pkg'

  uninstall :pkgutil => 'com.unity3d.*'
end
