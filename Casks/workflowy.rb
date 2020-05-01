cask 'workflowy' do
  version '1.3.5-7379'
  sha256 '4384ce5d351311943a5114e36f6b406c3f25b9e0e56a95f1ffa90451ad1a73b2'

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
