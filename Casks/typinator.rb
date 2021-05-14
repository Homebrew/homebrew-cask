cask "typinator" do
  version "8.7"
  sha256 "87dbf5b729116b603cd9fe6d1e269c8f3113ac359e686353971c09d6f37848b4"

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
