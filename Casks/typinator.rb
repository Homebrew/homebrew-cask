cask "typinator" do
  version "8.8"
  sha256 "4453cf969679d01dde0e10dff4072bbad576c85cc58b818e0bd0592c5d3f3025"

  url "https://www.ergonis.com/downloads/products/typinator/Typinator#{version.no_dots}-Install.dmg",
      user_agent: :fake
  name "Typinator"
  desc "Tool to automate the insertion of frequently used text and graphics"
  homepage "https://www.ergonis.com/"

  livecheck do
    url "https://update.ergonis.com/vck/typinator.xml"
    strategy :page_match
    regex(%r{<Program_Version>(\d+(?:\.\d+)*)</Program_Version>}i)
  end

  app "Typinator.app"
end
