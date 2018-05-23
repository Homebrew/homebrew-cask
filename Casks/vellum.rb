cask 'vellum' do
  version '2.2.0'
  sha256 '9f42db539784d602c059735844f0b4ac58eab30fa968686bcfcc36969fd217cf'

  # 180g.s3.amazonaws.com/downloads was verified as official when first introduced to the cask
  url "https://180g.s3.amazonaws.com/downloads/Vellum-#{version.no_dots}00.zip"
  appcast 'https://get.180g.co/updates/vellum/',
          checkpoint: '0fc930257c128307daecaeb526c498cdc9cd88403aa0439c336b1aabf7473300'
  name 'Vellum'
  homepage 'https://vellum.pub/'

  auto_updates true

  app 'Vellum.app'

  zap trash: [
               '~/Library/Application Scripts/co.180g.Vellum',
               '~/Library/Containers/co.180g.Vellum',
             ]
end
