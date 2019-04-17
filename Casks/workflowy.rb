cask 'workflowy' do
  version '1.2.10'
  sha256 'd1c2cc4271446f72d17ec21e54d30ee2ddee38432d9141cf212836ffcad668a1'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
