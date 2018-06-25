cask 'workflowy' do
  version '1.0.18'
  sha256 '692c347bf447a6243eb0a12f4837f469fe34345d7f12dcc6a19101eb90e8dd71'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
