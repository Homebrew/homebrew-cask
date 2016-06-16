cask 'unrarx' do
  version '2.2'
  sha256 '17fa2f3324d45c27a318ed51dab739c7f09b573185b76889b955ad2c9ad1d7b8'

  url "http://www.unrarx.com/files/UnRarX_#{version}.zip"
  appcast 'http://www.unrarx.com/update.xml',
          checkpoint: '17fa2f3324d45c27a318ed51dab739c7f09b573185b76889b955ad2c9ad1d7b8'
  name 'UnRarX'
  homepage 'http://www.unrarx.com'
  license :gratis

  app 'UnRarX.app'
end
