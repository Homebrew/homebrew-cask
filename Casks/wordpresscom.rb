cask 'wordpresscom' do
  version '1.1'
  sha256 '300154133f3acda34a4db631cab9f6a5cffa0a7103fffabfd4b96d4f3defa740'

  url "https://public-api.wordpress.com/rest/v#{version}/desktop/osx/download?type=dmg"
  name 'WordPress.com'
  homepage 'https://desktop.wordpress.com/'
  license :gpl

  app 'WordPress.com.app'
end
