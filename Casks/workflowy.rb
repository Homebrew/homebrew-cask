cask 'workflowy' do
  version '1.0.8'
  sha256 'ab8156ed42d767270600c2be9ac7ccaa37ec9f4ab1958ea600e16511f4b77ad0'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom',
          checkpoint: 'bc483a7758f8ca5a8124b57c4e4b7ad0f5f5801be384a4fb55175eeab563b867'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
