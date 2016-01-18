cask 'tiled' do
  version '0.15.0'
  sha256 'c6cece2aa20a9e9753ddacc16487dd76ce67c7486ed9e989caca774ffdce139d'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  appcast 'https://github.com/bjorn/tiled/releases.atom',
          checkpoint: 'e727cf43bf4077687753338e5864f3e6819a684c1df955d879e95e5e98d4dd3d'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'
  license :gpl

  app 'Tiled.app'
end
