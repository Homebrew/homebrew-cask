cask 'workflowy' do
  version '1.2.1'
  sha256 'c9760a1a5aebd774d1ed11a3a0c0a37d23ff7b357bd800ad206fec5825d84dc0'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
