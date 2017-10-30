cask 'workflowy' do
  version '1.0.5'
  sha256 'f2ca4aabdd41254aa44357bba9624ca4bb03fb70043b0d0fc9e0482c737b8a2c'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom',
          checkpoint: '369cbee3f43529cd59a0026a66f0325994958d02a3a3844dfb1356c102c5dd47'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
