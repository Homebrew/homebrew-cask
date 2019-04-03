cask 'workflowy' do
  version '1.2.8'
  sha256 '41cb0f712a6d21ce0c9910764c136547be90d84310c6e4fae6de3ae71d70f68c'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
