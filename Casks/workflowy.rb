cask 'workflowy' do
  version '1.1.16'
  sha256 'efcf8f9133d0257de1df88d3ff489c5ea6b6624eb674c62be1aabe73222231e8'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
