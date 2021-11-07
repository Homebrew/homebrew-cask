cask "typinator" do
  version "8.10"
  sha256 "38d17ec614d3746310906b6fa30d5ec8cf4771027810bb7e3134a53d943f0d99"

  url "https://www.ergonis.com/downloads/products/typinator/Typinator#{version.no_dots}-Install.dmg",
      user_agent: :fake
  name "Typinator"
  desc "Tool to automate the insertion of frequently used text and graphics"
  homepage "https://www.ergonis.com/"

  livecheck do
    url "https://update.ergonis.com/vck/typinator.xml"
    regex(%r{<Program_Version>(\d+(?:\.\d+)+)</Program_Version>}i)
  end

  app "Typinator.app"
end
