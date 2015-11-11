cask :v1 => 'wwdc' do
  version '2.3'
  sha256 '2abb2ab8f33d8b9b7fd68229fa654e06419e679d2c30f748ab2b664bace3e2f1'

  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom'
  name 'WWDC'
  homepage 'https://github.com/insidegui/WWDC'
  license :bsd

  app 'WWDC.app'
end
