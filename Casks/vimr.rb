cask :v1 => 'vimr' do
  version '0.7.1-29'
  sha256 '6bdcb51a355cbd63f502def54475b6d94a03048e0b4d0de83e3ce4341b20ccb5'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-#{version.sub(%r{-.*},'')}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom'
  name 'VimR'
  homepage 'http://vimr.org/'
  license :gpl

  app 'VimR.app'
end
