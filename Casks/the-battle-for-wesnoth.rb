cask "the-battle-for-wesnoth" do
  version "1.14.13"
  sha256 "e79a1dede6b8da6d3726ea87ff39a4c895e83fcd1dd0114201e3503dd37b5090"

  # sourceforge.net/wesnoth/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg"
  appcast "https://sourceforge.net/projects/wesnoth/rss"
  name "The Battle for Wesnoth"
  homepage "https://wesnoth.org/"

  app "The Battle for Wesnoth.app"
end
