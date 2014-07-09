class Unity3d < Cask
  version '4.5.1f3'
  sha256 '1b648596ca4283d8ec244ac1c45944e03ad301aed53bccb63dd57571de976570'

  url 'http://netstorage.unity3d.com/unity/unity-4.5.1.dmg'
  homepage 'http://unity3d.com/unity/'

  install 'Unity.pkg'
  uninstall :pkgutil => 'com.unity3d.*'
end
