cask 'termhere' do
  version '1.2.1'
  sha256 '8311c29b09f982ce829d5733865c715f4f457d0a46dcab2beb18462a73a37b9d'

  # github.com/hbang/TermHere was verified as official when first introduced to the cask
  url "https://github.com/hbang/TermHere/releases/download/#{version}/TermHere.#{version}.dmg"
  appcast 'https://github.com/hbang/TermHere/releases.atom',
          checkpoint: '02b386209318733f89017fabc2af9d6262c8cd907ce0e8bbf8f8dd882753d377'
  name 'TermHere'
  homepage 'https://hbang.ws/apps/termhere'

  app 'TermHere.app'
end
