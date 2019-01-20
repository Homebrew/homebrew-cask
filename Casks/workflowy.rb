cask 'workflowy' do
  version '1.1.13'
  sha256 'b32a148fb4e31de9f6bb6ee7a7727a92c1f93077162b83ad0a85116af2cb8fc8'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
