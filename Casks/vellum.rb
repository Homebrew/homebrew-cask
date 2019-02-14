cask 'vellum' do
  version '2.5.1'
  sha256 'db25cf31443a71607ceb39769cbfe73b064e55e7d39fe9ee3069f4da9d01b59d'

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
