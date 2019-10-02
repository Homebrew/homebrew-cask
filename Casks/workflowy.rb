cask 'workflowy' do
  version '1.3.4-4613'
  sha256 'da7acf69cee8c51ed7ec15bbf12a162712079ea8191559d5be01a9c5bca9cb41'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
