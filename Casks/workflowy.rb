cask 'workflowy' do
  version '1.1.15'
  sha256 'b2e1090b3092edf813ebcc376cde4d316137da779b5b51bd1dbc4ae7e6eae4b1'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
