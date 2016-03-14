cask 'tiled' do
  version '0.15.2'
  sha256 '70089f438f80d56bf3820478cca36ccb2b4adacace0240125a4d0ecf165e6d88'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  appcast 'https://github.com/bjorn/tiled/releases.atom',
          checkpoint: '18cff847ce24d6dcb02d42be46f419a600d78a3382bd8d0bbd3c1ca05d85b2c0'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'
  license :gpl

  app 'Tiled.app'
end
