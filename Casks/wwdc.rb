cask 'wwdc' do
  version '2.3'
  sha256 '2abb2ab8f33d8b9b7fd68229fa654e06419e679d2c30f748ab2b664bace3e2f1'

  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          :sha256 => 'ca7fd2b55818b5f3626d4e13303000ef064079653375d9d47ad969edc6e9b700'
  name 'WWDC'
  homepage 'https://github.com/insidegui/WWDC'
  license :bsd

  app 'WWDC.app'
end
