cask :v1 => 'tinyumbrella' do
  version '7.12'
  sha256 'f9cf39967e68ff9730a8fc6365ded9168fd370595e778d7fd38e4cbccd61ad27'

  url "http://cache.firmwareumbrella.com/downloads/TinyUmbrella-#{version}.00.app.zip"
  homepage 'http://blog.firmwareumbrella.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TinyUmbrella.app'
end
