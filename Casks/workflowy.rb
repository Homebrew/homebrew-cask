cask 'workflowy' do
  version '1.3.5-8079'
  sha256 '62fa9b161cc898ac2ffcc1f4b98ce817389fccf4f94024d898c645c7822beb60'

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
