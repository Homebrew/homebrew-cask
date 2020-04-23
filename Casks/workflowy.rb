cask 'workflowy' do
  version '1.3.5-7218'
  sha256 '5f3a118dc980a568f812bcd520d0ba7880badf40bb80ff8c89d867dea8a432c8'

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
