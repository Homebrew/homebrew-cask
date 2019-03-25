cask 'workflowy' do
  version '1.2.6'
  sha256 '4e3152e47883268a9abb53cb0c1933b7a67f26b1ad1263d2c5c6984bf6b78bb4'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
