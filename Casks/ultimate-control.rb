cask 'ultimate-control' do
  version '1.2'
  sha256 '8f26885d60c2afc502d97039c115f6bfcd22cee34ec9741017bc4d73bc3e5498'

  url "http://www.negusoft.com/downloads/ultimate_control_v#{version}_mac.dmg"
  name 'NEGU Soft Ultimate Control'
  homepage 'http://www.negusoft.com/index.php/ultimate-control'
  license :mpl

  app 'Ultimate Control.app'
end
