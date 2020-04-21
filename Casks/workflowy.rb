cask 'workflowy' do
  version '1.3.5-7075'
  sha256 'c2b0b62d7cbd0dae3dde52808d9c8de64ebb84b1c685ca3ca595b0b47e2b44d4'

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
