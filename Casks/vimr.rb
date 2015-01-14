cask :v1 => 'vimr' do
  version '0.5.1-25'
  sha256 'b316e879b546a89f5339a510a7168801c98e3180759ca76c3c8272be22f4ad62'

  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-#{version.sub(/-.*$/, '')}.tar.bz2"
  homepage 'http://vimr.org/'
  license :gpl

  app 'VimR.app'
end
