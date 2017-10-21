cask 'workflowy' do
  version '0.1.8'
  sha256 '46dac2678b55e4711bd46e6aab6e5ba1b2c49797d5e8f4a091d28a83b4650ac8'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom',
          checkpoint: 'cb2315841a1f0912b22e7337bf3b86667d812c6980cf58c1c028a20cd83e971a'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
