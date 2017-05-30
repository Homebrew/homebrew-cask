cask 'wwdc' do
  version '4.3.1'
  sha256 '8f4ee3d8515b5d3ade6fd2b1e6f47894e1e1f2a42da1636f0618ca8868387239'

  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: '87529bf98236e35c63e2c2237cd0465cf1a4e5339982bba47e32595c87df98ba'
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
