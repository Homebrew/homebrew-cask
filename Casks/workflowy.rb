cask 'workflowy' do
  version '1.1.1'
  sha256 '8e22e4308f9f0b03816e5201a1024b15b67dfae09fea4e987d5718a5de4218ee'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
