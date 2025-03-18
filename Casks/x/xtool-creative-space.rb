cask "xtool-creative-space" do
  arch arm: "arm64", intel: "amd64"

  on_arm do
    version "2.5.20,28,e9ad8acb-9485-464f-8721-2249c0a57316,2025-03-11-11-28-37"
    sha256  "e363dd535e2fb91da57dd3c95c24f2d62eae9fb0ed4eba91ab1a6b09ed91cd5c"
  end
  on_intel do
    version "2.5.20,16,ce209f24-c42b-4402-98f2-5445fc5a265b,2025-03-11-11-26-08"
    sha256 "93092cfcfb922d55e2ac31ace7900125d1d6e0fd0bc7a9e92a0088b1c1916894"
  end

  url "https://storage-us.xtool.com/resource/efficacy/xcs/prod-us/packages/#{version.csv.second}/#{version.csv.third}/xTool-Creative-Space-#{version.csv.first}-#{version.csv.fourth}-#{arch}.dmg"
  name "xTool Creative Space"
  desc "Design and control software for xTool laser machines"
  homepage "https://www.xtool.com/pages/software"

  livecheck do
    url :homepage
    regex(%r{
      /([^/]+)/([^/]+)/xTool[._-]Creative[._-]Space[._-]v?(\d+(?:\.\d+)+)[._-](\d+(?:-\d+)+)
      (?:[._-]#{arch})?\.dmg
    }ix)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[3]},#{match[1]},#{match[2]},#{match[4]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "xTool Creative Space.app"

  zap trash: [
    "~/Library/Application Support/xTool Creative Space",
    "~/Library/Logs/xTool Creative Space",
    "~/Library/Preferences/com.makeblock.xcs.plist",
    "~/Library/Saved Application State/com.makeblock.xcs.savedState",
  ]
end
