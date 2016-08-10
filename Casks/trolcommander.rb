cask 'trolcommander' do
  version '0.9.7'
  sha256 'd67cdf6c195e3885daf7d22243e4596b39dbbeb45f67c465ed3f34b2468110bd'

  # github.com/trol73/mucommander was verified as official when first introduced to the cask
  url "https://github.com/trol73/mucommander/releases/download/v#{version}/trolcommander-#{version.dots_to_underscores}.app.tar.gz?raw=true"
  appcast 'https://github.com/trol73/mucommander/releases.atom',
          checkpoint: '76406c8c7d2abbe5b528701b73e7d19d4370a98cc5f0473a7fa644a11aa77f2c'
  name 'trolCommander'
  homepage 'http://trolsoft.ru/en/soft/trolcommander'
  license :gpl

  app 'trolCommander.app'
end
