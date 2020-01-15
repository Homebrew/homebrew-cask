cask 'workflowy' do
  version '1.3.5-5665'
  sha256 'cb7e225817dfa66d4f6dfef80489f85b95a47455a6632a82a713b09ec8f05bd0'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
