class Unity < Cask
  version '4.5.4'
  sha256 '6fb72bfacf78df072559dd9a024a9d47e49b5717c8f17d53f05e2fc74a721876'

  url 'http://netstorage.unity3d.com/unity/unity-4.5.4.dmg'
  homepage 'http://unity3d.com/unity/'

  pkg 'Unity.pkg'
  uninstall :pkgutil => 'com.unity3d.*'
end
