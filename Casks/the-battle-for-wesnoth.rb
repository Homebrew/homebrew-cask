cask "the-battle-for-wesnoth" do
  version "1.16.6"
  sha256 "93261244ed2d636c3114f3dc29e420382a7bf58a05860af500e41030dc754efc"

  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg",
      verified: "sourceforge.net/wesnoth/"
  name "The Battle for Wesnoth"
  desc "Fantasy-themed turn-based strategy game"
  homepage "https://wesnoth.org/"

  livecheck do
    url :homepage
    regex(/href=.*?Wesnoth[._-]v?(\d+\.\d*[02468](?:\.\d+)*[a-z]?)\.dmg/i)
  end

  app "The Battle for Wesnoth.app"
end
