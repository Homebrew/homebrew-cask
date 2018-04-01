cask 'torustrooper' do
  version '0.22.2'
  sha256 '39b188107620c58f4a60f2f24d01f39ab87d46655203f4bcfe97d3a6fa5b7b3e'

  url "https://workram.com/downloads/TorusTrooper-for-OS-X-#{version}.dmg"
  appcast 'https://workram.com/games/',
          checkpoint: 'a31aea1ac1a7e2e6acfa671cafa7ed6949d84142d069c10dd39da4a005ff4e06'
  name 'Torus Trooper'
  homepage 'https://workram.com/games/'

  app 'TorusTrooper.app'
end
