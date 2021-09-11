cask "typinator" do
  version "8.9"
  sha256 "2d559560ea2a8b3a800dde4a7e6ecf9399c337cfef73df28f498e4d512f7c77f"

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
