cask 'wwdc' do
  version '4.1'
  sha256 '388d626d4af3d3207a021a28830a8c4f0ca974c5a3d55b04eda64d9277f36734'

  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: '51fab0ba0713a8ca6ca264e64b9449fef6e34352a7826ca053fa51a0f261359b'
  name 'WWDC'
  homepage 'https://github.com/insidegui/WWDC'
  license :bsd

  app 'WWDC.app'
end
