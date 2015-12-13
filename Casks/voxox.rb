cask :v1 => 'voxox' do
  version :latest
  sha256 :no_check

  url 'http://www.voxox.com/download/voxox-osx-latest.dmg'
  name 'Voxox'
  homepage 'http://www.voxox.com/'
  license :gratis

  app 'Voxox.app'
end
