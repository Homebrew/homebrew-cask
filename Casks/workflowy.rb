cask 'workflowy' do
  version '1.3.5-8342'
  sha256 '541462dc3303baf3755fd4fb4bfc11a1dcfa712d247f58ebc859e7ebe507aa4d'

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
