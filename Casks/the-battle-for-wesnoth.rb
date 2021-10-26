cask "the-battle-for-wesnoth" do
  version "1.16.0"
  sha256 "20dd3a085794fd90fe63e19e43b0797d1f76aaa14f58446c4df0f99ecb9c7227"

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
