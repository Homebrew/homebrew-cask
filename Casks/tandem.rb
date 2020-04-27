cask 'tandem' do
  version '1.5.3'
  sha256 '0abc760ab09f98867d53d67013961d1eaa6348b8c95a17190aac24e1360e3798'

  # tandem-app.sfo2.cdn.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://tandem-app.sfo2.cdn.digitaloceanspaces.com/Tandem-#{version}-mac.zip"
  appcast 'https://tandem-app.sfo2.digitaloceanspaces.com/latest-mac.yml'
  name 'Tandem'
  homepage 'https://tandem.chat/'

  app 'Tandem.app'
end
