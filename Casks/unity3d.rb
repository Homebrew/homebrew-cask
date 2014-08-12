class Unity3d < Cask
  version '4.5.2f1'
  sha256 'a6330f8b42865636a8c2055b72fbdff5775b7019254ca41437eca0be1b9baedf'

  url 'http://netstorage.unity3d.com/unity/unity-4.5.2.dmg'
  homepage 'http://unity3d.com/unity/'

  install 'Unity.pkg'
  uninstall :pkgutil => 'com.unity3d.*'
end
