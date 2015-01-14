cask :v1 => 'voxox' do
  version :latest
  sha256 :no_check

  url 'http://www.voxox.com/download/voxox-osx-latest.dmg'
  name 'Voxox'
  homepage 'http://www.voxox.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Voxox.app'
end
