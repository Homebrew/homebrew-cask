cask 'webcatalog' do
  version '3.2.7'
  sha256 '90963049890a5189321701421262dce2fc11381dc3805df6cc51167fb7a396a5'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: '8346d40a9e7ffed310c49332661e96e89ec08b9c93c6b10089aa2050ddd653da'
  name 'WebCatalog'
  homepage 'https://getwebcatalog.com/'

  app 'WebCatalog.app'
end
