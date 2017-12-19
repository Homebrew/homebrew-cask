cask 'testnav' do
  version '1.6.5'
  sha256 'bdc201983df28d34f8b4fab8b5b0cf9ae625631022e56a673ae6dbb5c9dfca0a'

  url "http://download.testnav.com/installers/testnav-#{version}.dmg"
  name 'TestNav'
  homepage 'http://download.testnav.com/'

  app 'TestNav.app'
end
