cask 'workflowy' do
  version '1.0.20'
  sha256 'caa4e1b52259c9bc8857813bda88b83302b61dae1a2aebbb19e6b642700ea273'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
