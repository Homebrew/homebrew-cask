cask 'workflowy' do
  version '1.1.6'
  sha256 'd93a1c7a80982ff0f95f9576228bd7d6eb08e9aa1ea1910ddd3abc63def039c5'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
