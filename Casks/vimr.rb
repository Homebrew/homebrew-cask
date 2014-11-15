cask :v1 => 'vimr' do
  version '0.2.0-20'
  sha256 '393d757bff0b6b9a0f94b468084ad88ff151619c2c917a3d64c2b16c87419d40'

  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-#{version.gsub(/-.*/, '')}.tar.bz2"
  homepage 'http://vimr.org/'
  license :gpl

  app 'VimR.app'
end
