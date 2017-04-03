cask 'torustrooper' do
  version '0.22.2'
  sha256 '39b188107620c58f4a60f2f24d01f39ab87d46655203f4bcfe97d3a6fa5b7b3e'

  url "https://workram.com/downloads/TorusTrooper-for-OS-X-#{version}.dmg"
  appcast 'https://workram.com/games/',
          checkpoint: 'a53dea4e8dcc4e5486a920d1b73e53454811f3d8c54b19b25236eff3f8923030'
  name 'Torus Trooper'
  homepage 'https://workram.com/games/'

  app 'TorusTrooper.app'
end
