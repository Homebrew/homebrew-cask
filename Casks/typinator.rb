cask "typinator" do
  version "8.6"
  sha256 "294b7b405d384649ff8b92c980c2afb5dec74bf6f6ebfe78fa0480ca57fbf1de"

  url "https://www.ergonis.com/downloads/products/typinator/Typinator#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast "https://update.ergonis.com/vck/typinator.xml"
  name "Typinator"
  desc "Tool to automate the insertion of frequently used text and graphics"
  homepage "https://www.ergonis.com/"

  app "Typinator.app"
end
