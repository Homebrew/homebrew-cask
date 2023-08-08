cask "the-battle-for-wesnoth" do
  version "1.16.10"
  sha256 "fef55e731b0672c63ce9010263c7408ef1db600005df7245de99885d1856def3"

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

  zap trash: [
    "~/Library/Application Scripts/org.wesnoth.Wesnoth",
    "~/Library/Containers/org.wesnoth.Wesnoth",
  ]
end
