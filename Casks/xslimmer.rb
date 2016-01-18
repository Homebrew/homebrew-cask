cask 'xslimmer' do
  version '1.9.4'
  sha256 '3b496e1f51c10e48d6d0d4ac35f35f993a256044e8923936813363d5ef04b56a'

  url "http://latenitesoft.com/xslimmer/download/Xslimmer_#{version.to_f}.dmg"
  appcast 'http://www.xslimmer.com/releases.xml',
          checkpoint: 'e6a52c35b48bb84462e177763e173ef65f8b4c4af66565f08d34512da98db7e7'
  name 'Xslimmer'
  homepage 'https://latenitesoft.com/xslimmer/'
  license :commercial

  app 'Xslimmer.app'
end
