cask 'typora' do
  version '0.9.8.5'
  sha256 'a89895dc2bb55e9b5d85caa8fdc9008e76a16d04c7eb0bc2673ecfad1fa4e20d'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: 'e3c717ecc8179492764c5f0017451c68f3b4bc8605cac28fd2818de684c8e62f'
  name 'Typora'
  homepage 'http://typora.io'
  license :gratis

  app 'Typora.app'
end
