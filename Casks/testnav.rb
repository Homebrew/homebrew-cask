cask 'testnav' do
  version '1.7.3'
  sha256 '9fca7d7e9bb57af5841b9e34722f680383b397b37f298c0b69efdc6565272335'

  url "https://download.testnav.com/installers/testnav-#{version}.dmg"
  appcast 'https://s3.amazonaws.com/tn8appinstallers/installerVersions.json'
  name 'TestNav'
  homepage 'https://download.testnav.com/'

  app 'TestNav.app'
end
