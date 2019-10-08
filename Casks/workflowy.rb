cask 'workflowy' do
  version '1.3.4-4640'
  sha256 '8aa9c8381240fa8437e7a17d54456db487d97669dc6d083b60026adc56bd3588'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
