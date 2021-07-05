cask "the-battle-for-wesnoth" do
  version "1.14.16"
  sha256 "b5206a4f5cef3fa3d59f503913c8407950ebb03e4ccd8580ad2b3cb2ffd7976d"

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
