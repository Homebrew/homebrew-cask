cask 'wordpresscom' do
  version '1.2.1'
  sha256 '1a10ba45287e6e3a6cc2c128aed4358e7e6efb1a624f80f6b9fd0cc71528489b'

  url 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=dmg'
  appcast 'https://github.com/Automattic/wp-desktop/releases.atom',
          :sha256 => '3c4d547cc3243b6410a369c8b9fe20e481157d55c6703e87ac526456c7afba6d'
  name 'WordPress.com'
  homepage 'https://desktop.wordpress.com/'
  license :gpl

  app 'WordPress.com.app'
end
