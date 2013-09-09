class Unity3d < Cask
  url 'http://netstorage.unity3d.com/unity/unity-4.2.1.dmg'
  homepage 'http://unity3d.com/unity/'
  version '4.2.1'
  sha1 'cbca9a117d474608a56e6c7a994140ae41a1f03b'
  install 'Unity.pkg'
  uninstall(
    :pkgutil => 'com.unity3d.*'
  )
end
