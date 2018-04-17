cask 'workflowy' do
  version '1.0.12'
  sha256 '1174ef8ca59abaedef5fe2247b9339c38a10ad1dac8102b983d10deb3ee687e1'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom',
          checkpoint: '045ffb0d3ce9bff488943ecff1eba5595ee6bd75af018b19482ea366c9824739'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
