cask 'varidesk' do
  version :latest
  sha256 :no_check

  url 'http://www.varidesk.com/assets/standing-desk-app/VARIDESK.dmg'
  name 'VARIDESK Standing Desk Companion App'
  homepage 'http://www.varidesk.com/'
  license :gratis

  installer manual: 'Install VARIDESK.app'

  uninstall quit:   'VARIDESK',
            delete: '/Applications/VARIDESK.app'
end
