cask 'workflowy' do
  version '1.3.5-5762'
  sha256 'fd2ba360af991ec34f337d15f21cd5d8cb9676eee1a4eac0206992728fab5651'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
