cask 'workflowy' do
  version '1.2.4'
  sha256 '6a5e0cd4a253f7a3ce9c2da339a973a0485a4ecee3147883766219d21c4995d8'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
