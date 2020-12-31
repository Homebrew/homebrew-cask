cask "the-battle-for-wesnoth" do
  version "1.14.15"
  sha256 "8b2476422ca3da0c1e26e93355fca5d655177ca041123e358ccec1194deba51e"

  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg",
      verified: "sourceforge.net/wesnoth/"
  name "The Battle for Wesnoth"
  homepage "https://wesnoth.org/"

  livecheck do
    url "https://sourceforge.net/projects/wesnoth/files/latest/download&user_agent=Intel%20Mac%20OS%20X"
    strategy :header_match
  end

  app "The Battle for Wesnoth.app"
end
