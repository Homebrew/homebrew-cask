cask 'typora' do
  version '0.9.9.4'
  sha256 '9cd022d20d4fe5d323297ba66b0824f3e3bb20cd6b08800bc0d324527fb3a0cf'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: 'fe1c2a2dc25c7b90742627e7386d926a78217aef8b68aaed36af012f89243e47'
  name 'Typora'
  homepage 'http://typora.io'
  license :gratis

  app 'Typora.app'
end
