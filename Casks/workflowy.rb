cask 'workflowy' do
  version '1.1.2'
  sha256 '432f4de9fb76d6bc00b63d592b5947f2c2d282690a6e07dc0f42b2aefd05334b'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
