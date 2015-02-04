cask :v1 => 'vimr' do
  version '0.6.0-27'
  sha256 '0a885d0b96c4b8b4761e238c21ff4522c27273b694627b6df07e862aafc1b5df'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-#{version.sub(%r{-.*},'')}.tar.bz2"
  name 'VimR'
  homepage 'http://vimr.org/'
  license :gpl

  app 'VimR.app'
end
