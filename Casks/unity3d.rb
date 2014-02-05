class Unity3d < Cask
  url 'http://netstorage.unity3d.com/unity/unity-4.3.4.dmg'
  homepage 'http://unity3d.com/unity/'
  version '4.3.4.1'
  sha1 '4aaa29db229f59c9d2b549e09546cfee1c4a01cc'
  install 'Unity.pkg'
  uninstall(
    :pkgutil => 'com.unity3d.*'
  )
end
