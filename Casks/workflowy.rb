cask 'workflowy' do
  version '1.2.11'
  sha256 '2a76f4dfbde0d9561bab99446c4a7f174d016f6cebc6a943daa19717362cb9e7'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
