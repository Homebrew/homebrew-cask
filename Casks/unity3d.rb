class Unity3d < Cask
  url 'http://netstorage.unity3d.com/unity/unity-4.2.2.dmg'
  homepage 'http://unity3d.com/unity/'
  version '4.2.2'
  sha1 '099ea47e16ccf7954ffc59b756c345d0137c8f9c'
  install 'Unity.pkg'
  uninstall(
    :pkgutil => 'com.unity3d.*'
  )
end
