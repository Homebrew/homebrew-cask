cask 'workflowy' do
  version '1.2.9'
  sha256 '698a9c88cbd6729a711cc8315789d308b669c32dbc7d17a7e741d03e7e9d62ae'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
