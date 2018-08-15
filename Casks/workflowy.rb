cask 'workflowy' do
  version '1.1.0'
  sha256 '82d0e3debcc98502e17f0670b3addbc3022a9a70834441648f1d77dcb8eb1ffb'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
