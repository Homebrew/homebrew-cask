class Unity3d < Cask
  url 'http://netstorage.unity3d.com/unity/unity-4.3.0.dmg'
  homepage 'http://unity3d.com/unity/'
  version '4.3.0'
  sha1 '03a270fcefc605142fb53398b3fe8409d0b2837f'
  install 'Unity.pkg'
  uninstall(
    :pkgutil => 'com.unity3d.*'
  )
end
