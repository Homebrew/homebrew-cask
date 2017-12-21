cask 'workflowy' do
  version '1.0.9'
  sha256 'b34d5fa939b9667871f6149cb0d8095746ba8a7299f965e24cc9e32aa5ac0af5'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom',
          checkpoint: '98e7c23a06871570fb338fb8d0c907c48fe64f3d721cbc04517c4e23d65413b2'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
