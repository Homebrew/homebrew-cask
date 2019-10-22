cask 'workflowy' do
  version '1.3.5-4650'
  sha256 '64466d21247f98c16effcc2c6407eedf9cad2d49c23fe79c0e7b0b63c67fa92a'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
