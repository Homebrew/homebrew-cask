cask :v1 => 'trolcommander' do
  version '0.9.5'
  sha256 '9bd9fe93245e55d20085ed14d1fafbfa0303806789416a594792e8a206a11457'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/trol73/trol-commander-dist/blob/master/#{version}/trolcommander-#{version.gsub('.', '_')}.app.tar.gz?raw=true"
  name 'trolCommander'
  homepage 'http://trolsoft.ru/en/soft/trolcommander'
  license :gpl

  app 'trolCommander.app'
end
