class Unity3d < Cask
  version '4.5.0.6'
  sha256 '2032f8cd51f92b7a62f7d2a5ae371edf94925c236bf1b1f89a78d94fb88aaaea'

  url 'http://netstorage.unity3d.com/unity/unity-4.5.0.dmg'
  homepage 'http://unity3d.com/unity/'

  install 'Unity.pkg'
  uninstall :pkgutil => 'com.unity3d.*'
end
