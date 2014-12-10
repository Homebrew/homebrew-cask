cask :v1 => 'voxox' do
  version :latest
  sha256 :no_check

  url 'http://www.voxox.com/download/voxox-osx-latest.dmg'
  homepage 'http://www.voxox.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Voxox.app'
end
