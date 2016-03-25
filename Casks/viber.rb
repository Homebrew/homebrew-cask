cask 'viber' do
  version :latest
  sha256 :no_check

  url 'http://download.viber.com/desktop/mac/Viber.dmg'
  name 'Viber'
  homepage 'http://viber.com'
  license :gratis

  app 'Viber.app'
end
