cask 'vellum' do
  version '2.1.4'
  sha256 'afdcf2342b913c834533884fae28ad1aacac9709aad44a57b195ed858ae287b1'

  # 180g.s3.amazonaws.com/downloads was verified as official when first introduced to the cask
  url "https://180g.s3.amazonaws.com/downloads/Vellum-#{version.no_dots}00.zip"
  appcast 'https://get.180g.co/updates/vellum/',
          checkpoint: 'daf825ce6740acefa6718898e018c6c71348a53cd96b146a96e9ff49e1cd97d0'
  name 'Vellum'
  homepage 'https://vellum.pub/'

  auto_updates true

  app 'Vellum.app'

  zap trash: [
               '~/Library/Application Scripts/co.180g.Vellum',
               '~/Library/Containers/co.180g.Vellum',
             ]
end
