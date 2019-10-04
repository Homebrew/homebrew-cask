cask 'vellum' do
  version '2.6.2'
  sha256 '37eb6e3f5de9d5e75a20c499070a85a06dcfb8ff086547c960e5359e8ccc06eb'

  # 180g.s3.amazonaws.com/downloads was verified as official when first introduced to the cask
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
