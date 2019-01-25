cask 'workflowy' do
  version '1.1.14'
  sha256 'b1fd9328840916a507a3577807575242b98e7ff8ee0d5a5fbca1237e7952dd13'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom'
  name 'WorkFlowy'
  homepage 'https://workflowy.com/downloads/mac/'

  app 'WorkFlowy.app'
end
