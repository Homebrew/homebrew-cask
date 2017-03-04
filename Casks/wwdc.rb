cask 'wwdc' do
  version '4.3.1'
  sha256 '8f4ee3d8515b5d3ade6fd2b1e6f47894e1e1f2a42da1636f0618ca8868387239'

  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: '79368cc7f1c7ef09000a13cd3f63b4284bc23bf1e331977945b4d2c74ba847b0'
  name 'WWDC'
  homepage 'https://github.com/insidegui/WWDC'

  auto_updates true

  app 'WWDC.app'
end
