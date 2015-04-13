cask :v1 => 'vimr' do
  version '0.7.0-28'
  sha256 'b1c285555d5757de00473f485eab20b6cc3700c3e0b55cc0676c3c7988e24c4f'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-#{version.sub(%r{-.*},'')}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom'
  name 'VimR'
  homepage 'http://vimr.org/'
  license :gpl

  app 'VimR.app'
end
