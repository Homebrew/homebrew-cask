cask 'tandem' do
  version '1.5.0'
  sha256 '02917cbdf5dec79c9bfb84696e606dc2b64667971ce5ff9758a4361fb1eb6055'

  # tandem-app.sfo2.cdn.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://tandem-app.sfo2.cdn.digitaloceanspaces.com/Tandem-#{version}-mac.zip"
  appcast 'https://tandem-app.sfo2.digitaloceanspaces.com/latest-mac.yml'
  name 'Tandem'
  homepage 'https://tandem.chat/'

  app 'Tandem.app'
end
