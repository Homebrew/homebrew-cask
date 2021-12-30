cask "the-battle-for-wesnoth" do
  version "1.16.1"
  sha256 "a12c312fd21d4f2622c5340211696ea4b92c88ac1f56fe61585e39f545d7fed5"

  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg",
      verified: "sourceforge.net/wesnoth/"
  name "The Battle for Wesnoth"
  desc "Fantasy-themed turn-based strategy game"
  homepage "https://wesnoth.org/"

  livecheck do
    url :homepage
    regex(/href=.*?Wesnoth[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "The Battle for Wesnoth.app"
end
