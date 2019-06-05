cask 'workflowy' do
  version '1.2.18'
  sha256 'f6eb63b71e7fcb2f4adc0facfacd828375f2bec9a31f7e10b6a436e2b158c5e7'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
