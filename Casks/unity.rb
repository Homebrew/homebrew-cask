cask :v1 => 'unity' do
  version '4.6.1'
  sha256 '3db6871de79794e272f64ae22c99ada0d481b5904ebab30318b57452fc987182'

  url "http://netstorage.unity3d.com/unity/unity-#{version}.dmg"
  homepage 'http://unity3d.com/unity/'
  license :commercial

  pkg 'Unity.pkg'

  uninstall :pkgutil => 'com.unity3d.*'
end
