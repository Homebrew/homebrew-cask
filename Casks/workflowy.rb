cask 'workflowy' do
  version '1.3.5-9401'
  sha256 'c3d0be6a0bb64fa9721f6cb8f192f2f3b48da1915f5510e7ef3b23cceb6e04a2'

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
