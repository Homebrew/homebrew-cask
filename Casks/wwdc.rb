cask 'wwdc' do
  version '4.1.1'
  sha256 '505b8764774c7293f96eaf2904ae41361a086836bc1796c7335b330f5269feab'

  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: '51fab0ba0713a8ca6ca264e64b9449fef6e34352a7826ca053fa51a0f261359b'
  name 'WWDC'
  homepage 'https://github.com/insidegui/WWDC'
  license :bsd

  app 'WWDC.app'
end
