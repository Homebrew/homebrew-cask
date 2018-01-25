cask 'vellum' do
  version '2.0.7'
  sha256 '0180bf11eb19a5f7ee41a2844d3b39ba16b14f04e5a44f58661894c7cf582b84'

  # 180g.s3.amazonaws.com/downloads was verified as official when first introduced to the cask
  url "https://180g.s3.amazonaws.com/downloads/Vellum-#{version.no_dots}00.zip"
  appcast 'https://get.180g.co/updates/vellum/',
          checkpoint: '1d5b7219f00c5f6e8be05102dbb43a85ca90001ab6fe6a1ababb77fead142723'
  name 'Vellum'
  homepage 'https://vellum.pub/'

  auto_updates true

  app 'Vellum.app'

  zap trash: [
               '~/Library/Application Scripts/co.180g.Vellum',
               '~/Library/Containers/co.180g.Vellum',
             ]
end
