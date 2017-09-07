cask 'vellum' do
  version '20400'
  sha256 '9ee621ceaaf1699190e7b472d8dddff4df40caf4c477f3c91db9970db75a2c79'

  # 180g.s3.amazonaws.com/downloads was verified as official when first introduced to the cask
  url "https://180g.s3.amazonaws.com/downloads/Vellum-#{version}.zip"
  appcast 'https://get.180g.co/updates/vellum/',
          checkpoint: '0d204086d6fe2c397d5401330a3a9eb9a7c559ec0645abd2fd07adef2caa4ece'
  name 'Vellum'
  homepage 'https://vellum.pub/'

  auto_updates true

  app 'Vellum.app'

  zap delete: [
                '~/Library/Application Scripts/co.180g.Vellum',
                '~/Library/Containers/co.180g.Vellum',
              ]
end
