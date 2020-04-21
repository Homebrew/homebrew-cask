cask 'tandem' do
  version '1.5.1'
  sha256 'c1ca526b4efb9c412b40cf2054e6102f3bb57d9aab9c48e8f25143d5bde00ff2'

  # tandem-app.sfo2.cdn.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://tandem-app.sfo2.cdn.digitaloceanspaces.com/Tandem-#{version}-mac.zip"
  appcast 'https://tandem-app.sfo2.digitaloceanspaces.com/latest-mac.yml'
  name 'Tandem'
  homepage 'https://tandem.chat/'

  app 'Tandem.app'
end
