cask 'vellum' do
  version '2.6.7'
  sha256 '64f6c1171e088f4379378ac0626f6a7fa93e093e0ae7d55237323a1ee79af4ec'

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
