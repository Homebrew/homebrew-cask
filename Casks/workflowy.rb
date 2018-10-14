cask 'workflowy' do
  version '1.1.4'
  sha256 '72b30fcda33aef584b132d13fc41a2d8321ffc4e01b0f14fea122c764d90dee8'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
