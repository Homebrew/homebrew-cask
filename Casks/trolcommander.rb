cask 'trolcommander' do
  version '0.9.7'
  sha256 'd67cdf6c195e3885daf7d22243e4596b39dbbeb45f67c465ed3f34b2468110bd'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/trol73/mucommander/releases/download/v#{version}/trolcommander-#{version.gsub('.', '_')}.app.tar.gz?raw=true"
  name 'trolCommander'
  homepage 'http://trolsoft.ru/en/soft/trolcommander'
  license :gpl

  app 'trolCommander.app'
end
