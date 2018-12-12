cask 'workflowy' do
  version '1.1.9'
  sha256 '4138332a4e2078c9fe2c7b0c093695ac8eca401577ebc01d5b267e758a62775b'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
