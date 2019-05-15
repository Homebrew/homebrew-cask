cask 'workflowy' do
  version '1.2.14'
  sha256 '2618e15a9bb8960e0f5e6e81b0a7b1ead3bfdf0b650393ee33a9552f0beec5cf'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
