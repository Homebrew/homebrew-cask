cask 'tiled' do
  version '0.15.0'
  sha256 'c6cece2aa20a9e9753ddacc16487dd76ce67c7486ed9e989caca774ffdce139d'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  appcast 'https://github.com/bjorn/tiled/releases.atom',
          :sha256 => '60e520726ca5b51ec8c04b48ec5829ee258b92bbefc19e9750618ab9c738a972'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'
  license :gpl

  app 'Tiled.app'
end
