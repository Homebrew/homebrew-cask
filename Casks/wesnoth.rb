cask 'wesnoth' do
  version '1.12.4'
  sha256 '1773d6d6441e121ed8e1a219acaa6cf0c7b24aefe58c5253fc71a16a165e350b'

  # sourceforge.net/wesnoth was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/wesnoth/rss',
          checkpoint: '3cefc3332267dc68bd9fb487ddb6a436360dc0d259507082a1fcba9ad94d3704'
  name 'The Battle for Wesnoth'
  homepage 'https://wesnoth.org/'
  license :gpl

  app 'Wesnoth.app'
end
