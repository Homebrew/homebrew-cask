cask 'workflowy' do
  version '1.3.5-9115'
  sha256 '27fb7619a340cc070333f832558cd5b21ae58f3c5be072e1bdafbce9496bc7d7'

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
