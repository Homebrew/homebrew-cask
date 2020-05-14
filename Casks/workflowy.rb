cask 'workflowy' do
  version '1.3.5-7484'
  sha256 '674dfb3f55f9a07ef358bdfa114dfcc27e6a6ada98d5d756fb9c8df7c370b484'

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
