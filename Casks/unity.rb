cask :v1 => 'unity' do
  version '4.6.0'
  sha256 'ceeff727f8e66ebe00bd805468da27aa996bfcd5b3a455fe65516d9a2075a395'

  url "http://netstorage.unity3d.com/unity/unity-#{version}.dmg"
  homepage 'http://unity3d.com/unity/'
  license :commercial

  pkg 'Unity.pkg'

  uninstall :pkgutil => 'com.unity3d.*'
end
