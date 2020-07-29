cask 'workflowy' do
  version '1.3.5-8590'
  sha256 'e7621fbe0e31a4aff1e038442d58eaddf5b9c28bf8ed36bcfa25595b960b72a3'

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
