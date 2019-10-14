cask 'vellum' do
  version '2.6.3'
  sha256 '2f99843f49487e907800a0e90d9ae1ac8d678f4573dc00b49f8cb558013eb994'

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
