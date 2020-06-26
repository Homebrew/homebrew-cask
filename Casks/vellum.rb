cask 'vellum' do
  version '2.7.1'
  sha256 'cbe09c80e0e23e026e9deeca52c9b873b57dd60fbe5e14698b6aef2c0c4ce198'

  # 180g.s3.amazonaws.com/downloads/ was verified as official when first introduced to the cask
  url "https://180g.s3.amazonaws.com/downloads/Vellum-#{version.no_dots}00.zip"
  appcast 'https://get.180g.co/updates/vellum/'
  name 'Vellum'
  homepage 'https://vellum.pub/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Vellum.app'

  zap trash: [
               '~/Library/Application Scripts/co.180g.Vellum',
               '~/Library/Containers/co.180g.Vellum',
             ]
end
