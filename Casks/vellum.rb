cask 'vellum' do
  version '20500'
  sha256 '18299e204edc4aff335146632a64245956265f5db55b91856bdf28410e1d1f9f'

  # 180g.s3.amazonaws.com/downloads was verified as official when first introduced to the cask
  url "https://180g.s3.amazonaws.com/downloads/Vellum-#{version}.zip"
  appcast 'https://get.180g.co/updates/vellum/',
          checkpoint: 'e4148c4a5415ac31d1b92b1a17005dd7e4ebd91fe8da45ed55664603758c114c'
  name 'Vellum'
  homepage 'https://vellum.pub/'

  auto_updates true

  app 'Vellum.app'

  zap trash: [
               '~/Library/Application Scripts/co.180g.Vellum',
               '~/Library/Containers/co.180g.Vellum',
             ]
end
