cask 'vellum' do
  version '2.2.1'
  sha256 '647470a1c846932d625cafc7df5d0767d0664158036e119de59a10bdf5385597'

  # 180g.s3.amazonaws.com/downloads was verified as official when first introduced to the cask
  url "https://180g.s3.amazonaws.com/downloads/Vellum-#{version.no_dots}00.zip"
  appcast 'https://get.180g.co/updates/vellum/'
  name 'Vellum'
  homepage 'https://vellum.pub/'

  auto_updates true

  app 'Vellum.app'

  zap trash: [
               '~/Library/Application Scripts/co.180g.Vellum',
               '~/Library/Containers/co.180g.Vellum',
             ]
end
