cask 'workflowy' do
  version '1.1.11'
  sha256 'abe2533e0e08a57ec1f14466b642df6d2540b52ec358bb3267d6f1a75fa737bb'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
