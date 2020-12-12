cask "typinator" do
  version "8.5"
  sha256 "670df1830fa7893baf892e37008741c54c46d3e9e989d6933ac030352207342f"

  url "https://www.ergonis.com/downloads/products/typinator/Typinator#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast "https://update.ergonis.com/vck/typinator.xml"
  name "Typinator"
  desc "Tool to automate the insertion of frequently used text and graphics"
  homepage "https://www.ergonis.com/"

  app "Typinator.app"
end
