cask 'workflowy' do
  version '1.1.10'
  sha256 '79f0043bdc5e7a2984f5259648a6e7234f696bc7aeadb37a52a8c0d341a6f391'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
