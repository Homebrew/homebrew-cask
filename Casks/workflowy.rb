cask 'workflowy' do
  version '1.2.17'
  sha256 '83fad16efdf6d42d8c7bf4879a8593d824ecbf134da56a355c0c18afecdfefb1'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
