cask :v1 => 'typinator' do
  version :latest
  sha256 :no_check

  url 'http://www.ergonis.com/downloads/typinator-install.dmg'
  name 'Typinator'
  homepage 'http://www.ergonis.com/'
  license :commercial

  app 'Typinator.app'

  accessibility_access true
end
