cask 'workflowy' do
  version '1.3.5-5631'
  sha256 '6a70b1ecefdf91ebeeecbfc56cf4b4ed4710f3b9f3d603489d8317cab9fbecf9'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  auto_updates true

  app 'WorkFlowy.app'
end
