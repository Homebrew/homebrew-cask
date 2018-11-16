cask 'workflowy' do
  version '1.1.8'
  sha256 '1f00f936bc918e6265e12a084ee3a8d3bac381ba6afae6f1fcf3ae6314668429'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
