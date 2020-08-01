cask "the-battle-for-wesnoth" do
  version "1.14.13"
  sha256 "3824a6c2828a866ede7caab81287382d5e95969e240d9e22364500a83291b8de"

  # sourceforge.net/wesnoth/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg"
  appcast "https://sourceforge.net/projects/wesnoth/rss"
  name "The Battle for Wesnoth"
  homepage "https://wesnoth.org/"

  app "The Battle for Wesnoth.app"
end
