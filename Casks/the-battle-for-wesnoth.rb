cask "the-battle-for-wesnoth" do
  version "1.14.15a"
  sha256 "d301ca19d27131256069994632e65c52199a602f4fcb8896eb0a7de3e550c4f7"

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
