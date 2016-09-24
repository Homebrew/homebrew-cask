cask 'typora' do
  version '0.9.9.7.6'
  sha256 '2daae8b119c99b48c4b2d7199622af5b733b51270d0d46b8795fb5e3b32ff44b'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: 'a856ddacf753bd32120c79adbd680c2d063e35bf8d2f95ea672d0ca6f7ab4e2b'
  name 'Typora'
  homepage 'https://typora.io'
  license :gratis

  app 'Typora.app'
end
