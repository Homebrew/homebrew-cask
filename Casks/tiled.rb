cask :v1 => 'tiled' do
  version '0.10.2'
  sha256 'e96636aa597375304729a9bb20f17b1b3a1bf4ffef6a0060ba65deb0bfc2aee0'

  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  homepage 'http://www.mapeditor.org/'
  license :oss

  app 'Tiled.app'
end
