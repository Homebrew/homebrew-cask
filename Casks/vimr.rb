cask :v1 => 'vimr' do
  version '0.5.2-26'
  sha256 'df708cbb468c9b27fda61134f965b907131b91aeea26df7d3c546cdcc922abe7'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-#{version.sub(%r{-.*},'')}.tar.bz2"
  name 'VimR'
  homepage 'http://vimr.org/'
  license :gpl

  app 'VimR.app'
end
