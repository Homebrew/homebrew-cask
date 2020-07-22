cask 'workflowy' do
  version '1.3.5-9554'
  sha256 '6a879e5ec4abcaa012e0f68828b37154ad8fef3d61f54effc5f328e6083df3c3'

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
