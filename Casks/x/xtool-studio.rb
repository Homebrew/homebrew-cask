cask "xtool-studio" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "1.0.17,28,06bd0f17-e880-4435-a5fa-5d59b27a9c2c"
    sha256 "b3e54ac877117da89d519700a335f71941be90987fdc15786ba79e58cd7dde85"
  end
  on_intel do
    version "1.0.17,16,bbc5d7b6-b2fb-4ca2-87bf-64818321b92b"
    sha256 "b7a31af49eb16dd0ff3eabc69a1972c0f8936fcc82c5d293e1f83e320bac3765"
  end

  url "https://storage.atomm.com/efficacy/xcs-package/prod/packages/#{version.csv.second}/#{version.csv.third}/xTool-Studio-#{arch}-#{version.csv.first}.dmg",
      verified: "storage.atomm.com/efficacy/xcs-package/"
  name "xTool Studio"
  desc "Design and control software for xTool laser machines"
  homepage "https://www.xtool.com/pages/software"

  livecheck do
    url :homepage
    regex(%r{href=.*?/([^/]+)/([^/]+)/xTool[._-]Studio(?:[._-]#{arch})?[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[3]},#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :big_sur"

  app "xTool Studio.app"

  zap trash: [
    "~/Library/Application Support/xTool Studio",
    "~/Library/Logs/xTool Studio",
    "~/Library/Preferences/com.makeblock.xtool-studio.plist",
    "~/Library/Saved Application State/com.makeblock.xtool-studio.savedState",
  ]
end
