cask 'typora' do
  version '0.9.9.7.6'
  sha256 '2daae8b119c99b48c4b2d7199622af5b733b51270d0d46b8795fb5e3b32ff44b'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '2c6675ce272d71ede300210d136ce6d45e041578d07ee43acbce897359bc4c31'
  name 'Typora'
  homepage 'https://typora.io'
  license :gratis

  app 'Typora.app'
end
