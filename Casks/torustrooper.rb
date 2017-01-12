cask 'torustrooper' do
  version '0.22.2'
  sha256 '39b188107620c58f4a60f2f24d01f39ab87d46655203f4bcfe97d3a6fa5b7b3e'

  url "https://workram.com/downloads/TorusTrooper-for-OS-X-#{version}.dmg"
  appcast 'https://workram.com/games/',
          checkpoint: '0099c96dfbcf566c5b80dee384bb73e788bb00042bcf33803c9aeb651f0603f4'
  name 'Torus Trooper'
  homepage 'https://workram.com/games/'

  app 'TorusTrooper.app'
end
