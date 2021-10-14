cask "typinator" do
  version "8.9"
  sha256 "7c223e1624ad89a0a203b7750f7276ee1a7c1038ccceafc68ce1dcaaf54518b2"

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
