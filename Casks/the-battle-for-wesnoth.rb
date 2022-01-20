cask "the-battle-for-wesnoth" do
  version "1.17.0"
  sha256 "53e559592a835d86bf32af8ff55bb6798e34e84361263ac47ca15efa90602b5e"

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
