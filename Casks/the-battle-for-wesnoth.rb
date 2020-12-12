cask "the-battle-for-wesnoth" do
  version "1.14.14"
  sha256 "18473fb639d3ca918c7789e38c6b3c4dc2ab16ceb1957494a33b1c6ea4b4c83b"

  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg",
      verified: "sourceforge.net/wesnoth/"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sourceforge.net/projects/wesnoth/files/latest/download&user_agent=Intel%20Mac%20OS%20X"
  name "The Battle for Wesnoth"
  homepage "https://wesnoth.org/"

  app "The Battle for Wesnoth.app"
end
