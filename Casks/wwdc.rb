cask 'wwdc' do
  version '3.0'
  sha256 'a775881bb3faabef94f14ae92e278683ac27852647b26f6fe73ccd0e4815f9ce'

  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: '2e7a22fc00f8afbd8b08a1a9b903d2a711f99f817cd345d37bceed75adf70140'
  name 'WWDC'
  homepage 'https://github.com/insidegui/WWDC'
  license :bsd

  app 'WWDC.app'
end
