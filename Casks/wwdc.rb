cask 'wwdc' do
  version '4.3.1'
  sha256 '8f4ee3d8515b5d3ade6fd2b1e6f47894e1e1f2a42da1636f0618ca8868387239'

  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: '9d8b9a9c7e406a840fe2b46b542e2e8be1158a71da218ead9e6639d8e65b39a2'
  name 'WWDC'
  homepage 'https://github.com/insidegui/WWDC'

  auto_updates true

  app 'WWDC.app'

  zap delete: [
                '~/Library/Application Support/br.com.guilhermerambo.WWDC',
                '~/Library/Caches/br.com.guilhermerambo.WWDC',
                '~/Library/Preferences/br.com.guilhermerambo.WWDC.plist',
              ]
end
