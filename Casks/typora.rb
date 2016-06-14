cask 'typora' do
  version '0.9.9.4.4'
  sha256 'e8e470254dcd730b3b9ee53f6d268ca4d56b0ce5563719b8be05f00617e6c3b2'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '03cec5c9d0283840d9d151232a3c2c935e09481cfdd18f46159685e467bf7bfb'
  name 'Typora'
  homepage 'http://typora.io'
  license :gratis

  app 'Typora.app'
end
