cask "the-battle-for-wesnoth" do
  version "1.17.2"
  sha256 "0219f94341e430faa75b22cbd3b75cc7e2984cc2625e6097425231c68abeebac"

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
