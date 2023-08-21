cask "xtool-creative-space" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "1.4.13,28.ca6e5be6-e891-425b-91f9-76905be4c2c6,2023-08-01-20-46-35"
    sha256  "a9fcc73f25c65221d82c3c623c44058844574963152b678817f1ae52e2f311c4"
  end
  on_intel do
    version "1.4.13,16.006c4bfc-da2b-4f3b-9bc0-a8b9f9facfe2,2023-08-01-20-47-35"
    sha256 "267eed57a83300c78116560733ad1d3c9b3af62ed242740801735fb26bd49558"
  end

  url "https://res-us.makeblock.com/efficacy/xcs/production/packages/#{version.csv.second.tr(".", "/")}/xTool%20Creative%20Space-#{version.csv.first}-#{version.csv.third}-#{arch}.dmg",
      verified: "res-us.makeblock.com/efficacy/xcs/production/packages/"
  name "xTool Creative Space"
  desc "Design and control software for xTool laser machines"
  homepage "https://www.xtool.com/pages/software"

## Disabling livecheck because homepage does not have version information anymore
## instead links redirect to the latest release
#  livecheck do
#    url :homepage
#    regex(%r{href=.*?packages/(.*)/xTool\s?Creative\s?Space[._-](\d+(?:\.\d+)+)-(\d+(?:-\d+)+)-#{arch}\.dmg}i)
#    strategy :page_match do |page, regex|
#      page.scan(regex).map do |match|
#        "#{match[1]},#{match[0].tr("/", ".")},#{match[2]}"
#      end
#    end
#  end

  app "xTool Creative Space.app"

  zap trash: [
    "~/Library/Application Support/xTool Creative Space",
    "~/Library/Logs/xTool Creative Space",
    "~/Library/Preferences/com.makeblock.xcs.plist",
    "~/Library/Saved Application State/com.makeblock.xcs.savedState",
  ]
end
