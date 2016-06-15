cask 'wwdc' do
  version '4.2.2'
  sha256 '27245ef28e03380ff8f8d404c9d7a45b7b1fd23ed2f7d754aef37fd08ddc4f5e'

  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: 'bfbe7e28c0b7184bfe89d438011faef35b1b22154127dea76eb456c07f79c17e'
  name 'WWDC'
  homepage 'https://github.com/insidegui/WWDC'
  license :bsd

  auto_updates true

  app 'WWDC.app'
end
