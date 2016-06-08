cask 'wwdc' do
  version '4.1.1'
  sha256 '505b8764774c7293f96eaf2904ae41361a086836bc1796c7335b330f5269feab'

  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: '7ea1df07bc8b6108e8ef68ddbbd5c5140d3528c32706c3600aebea26b19ec799'
  name 'WWDC'
  homepage 'https://github.com/insidegui/WWDC'
  license :bsd

  app 'WWDC.app'
end
