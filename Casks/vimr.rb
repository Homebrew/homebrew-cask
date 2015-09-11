cask :v1 => 'vimr' do
  version '0.7.3-31'
  sha256 'dba9435265735c1ea471243f6d37cbb470783ca49daf69248dd64aee41697ebc'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-#{version.sub(%r{-.*},'')}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom'
  name 'VimR'
  homepage 'http://vimr.org/'
  license :gpl

  app 'VimR.app'
end
