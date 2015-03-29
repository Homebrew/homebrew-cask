cask :v1 => 'tinyumbrella' do
  version '8.2.0.48'
  sha256 '1de31924e50cbb2038ecdc795e4c01a518e468d45537622fdda63920e3ca2364'

  url "http://blog.firmwareumbrella.com/download/343/"
  homepage 'http://blog.firmwareumbrella.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TinyUmbrella.app'
end
