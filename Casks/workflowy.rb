cask 'workflowy' do
  version '1.3.5-7860'
  sha256 '7ce0dcd15f5d9893a75abc7dc1c678d640bd049b964bd5f65c1eded997b76592'

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
