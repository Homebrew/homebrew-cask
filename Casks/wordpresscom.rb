cask 'wordpresscom' do
  version :latest
  sha256 :no_check

  url 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=dmg'
  appcast 'https://github.com/Automattic/wp-desktop/releases.atom',
          checkpoint: '3c4d547cc3243b6410a369c8b9fe20e481157d55c6703e87ac526456c7afba6d'
  name 'WordPress.com'
  homepage 'https://desktop.wordpress.com/'
  license :gpl

  app 'WordPress.com.app'
end
