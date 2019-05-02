cask 'workflowy' do
  version '1.2.12'
  sha256 'cad0a4a8837a4800a1cd21aeb1dfa42b8176e5aeee51763c242d1c619bf37149'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
