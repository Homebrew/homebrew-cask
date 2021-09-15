cask "the-battle-for-wesnoth" do
  version "1.14.17"
  sha256 "7ab1c7fbd5c691a7edec696d3cbb8a8271225a5687a6a050b71e5ceac1dd6d55"

  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg",
      verified: "sourceforge.net/wesnoth/"
  name "The Battle for Wesnoth"
  desc "Fantasy-themed turn-based strategy game"
  homepage "https://wesnoth.org/"

  livecheck do
    url "https://sourceforge.net/projects/wesnoth/files/latest/download&user_agent=Intel%20Mac%20OS%20X"
    strategy :header_match
  end

  app "The Battle for Wesnoth.app"
end
