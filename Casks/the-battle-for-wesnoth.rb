cask "the-battle-for-wesnoth" do
  version "1.16.1a"
  sha256 "6ece41d6e78aa04217633a21d4f4e9b515c2ea74b2bf1713dbc248405637aa05"

  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg",
      verified: "sourceforge.net/wesnoth/"
  name "The Battle for Wesnoth"
  desc "Fantasy-themed turn-based strategy game"
  homepage "https://wesnoth.org/"

  livecheck do
    url :homepage
    regex(/href=.*?Wesnoth[._-]v?(\d+(?:\.\d+)+[a-z]?)\.dmg/i)
  end

  app "The Battle for Wesnoth.app"
end
