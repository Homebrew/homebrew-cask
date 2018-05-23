cask 'workflowy' do
  version '1.0.15'
  sha256 '3e19668719d305a41ae1a22568439954a9f8f002e7c5c6e4f3fcb39a07e7b413'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom',
          checkpoint: '8c82cdf29ab8b6a1f06ceb51927dbeec2bda75fe2e217fcdddb2d6e5139ff8b6'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
