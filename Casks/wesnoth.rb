cask 'wesnoth' do
  version '1.12.4'
  sha256 '1773d6d6441e121ed8e1a219acaa6cf0c7b24aefe58c5253fc71a16a165e350b'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/wesnoth/Wesnoth_#{version}.dmg"
  name 'The Battle for Wesnoth'
  homepage 'https://wesnoth.org'
  license :gpl

  app 'Wesnoth.app'
end
