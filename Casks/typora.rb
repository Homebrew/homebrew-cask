cask 'typora' do
  version '0.9.9.5.1'
  sha256 '75fcc47ff7078f728c0b51422106b5aa0661dc579e0e5b7fb6c2f323283e2d06'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '196b37fc96ed2c05a2765009f9752d1422de92f460d4019316bf782ebd77f670'
  name 'Typora'
  homepage 'http://typora.io'
  license :gratis

  app 'Typora.app'
end
