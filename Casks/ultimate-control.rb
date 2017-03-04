cask 'ultimate-control' do
  version '1.2'
  sha256 '8f26885d60c2afc502d97039c115f6bfcd22cee34ec9741017bc4d73bc3e5498'

  url "http://www.negusoft.com/downloads/ultimate_control_v#{version}_mac.dmg"
  appcast 'http://www.negusoft.com/index.php/ultimate-control/downloads',
          checkpoint: 'ea801f8d4087e94818cb165feef2d63127b349b7b0c59d9a648bbd04007a8527'
  name 'NEGU Soft Ultimate Control'
  homepage 'http://www.negusoft.com/index.php/ultimate-control'

  app 'Ultimate Control.app'
end
