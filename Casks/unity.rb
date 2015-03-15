cask :v1 => 'unity' do
  version '4.6.3'
  sha256 '7a64891d46520f448cecd7ee0fa3dd3d33568f806af924048bba099047d38a59'

  url "http://netstorage.unity3d.com/unity/unity-#{version}.dmg"
  homepage 'http://unity3d.com/unity/'
  license :commercial

  pkg 'Unity.pkg'

  uninstall :pkgutil => 'com.unity3d.*'
end
