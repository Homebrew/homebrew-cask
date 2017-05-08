cask 'workflowy' do
  version '0.0.1'
  sha256 '9fa8ff9da4bec28076f524f2b52a47f77653ef243030fc6fed3836a1cc46fdb8'

  # github.com/workflowy/desktop was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy-#{version}.dmg"
  appcast 'https://github.com/workflowy/desktop/releases.atom',
          checkpoint: '58d829d6e781806eb2f928344cc60567b5c054f78e4381610b38ee422752bd4a'
  name 'WorkFlowy'
  homepage 'https://blog.workflowy.com/2017/04/18/preview-the-workflowy-desktop-app/'

  app 'WorkFlowy.app'
end
