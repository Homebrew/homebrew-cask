class Unity3d < Cask
  url 'http://netstorage.unity3d.com/unity/unity-4.3.4.dmg'
  homepage 'http://unity3d.com/unity/'
  version '4.3.4.1'
  sha256 '09e073e68fd54533338fc2f79ffa255cc4f9b8effa4b1ef22865b9c2548d6f86'
  install 'Unity.pkg'
  uninstall(
    :pkgutil => 'com.unity3d.*'
  )
end
