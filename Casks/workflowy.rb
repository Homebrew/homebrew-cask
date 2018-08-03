cask 'workflowy' do
  version '1.0.19'
  sha256 '27a1e26f9a7432ba9a22d858dac69aad4b2bbc0a6d78abc3c072bddf4d4c68e1'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
