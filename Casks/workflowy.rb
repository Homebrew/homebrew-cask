cask 'workflowy' do
  version '1.3.5-8727'
  sha256 '64e6fbb038b7c7d6b257f5b21675eb5addb301466ad821191b48465ecdc6ace7'

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
