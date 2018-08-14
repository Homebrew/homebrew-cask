cask 'workflowy' do
  version '1.0.21'
  sha256 '92f4869390856858baa0f5387eff482b0c10fccbaa3288f74082c76d8050f221'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
