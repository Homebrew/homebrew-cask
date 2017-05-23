cask 'wwdc' do
  version '4.3.1'
  sha256 '8f4ee3d8515b5d3ade6fd2b1e6f47894e1e1f2a42da1636f0618ca8868387239'

  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: '428c1ad437974b48190b36378d9570f1a9ca74b6907c5f9ae578496ec2fd4a4e'
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
