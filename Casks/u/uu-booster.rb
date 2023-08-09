cask "uu-booster" do
  version "2.7.3,240"
  sha256 "966c92a884118e9385eed2133d21f5021b39e3eb2659ccbec5311c54da47dd92"

  url "https://uu.gdl.netease.com/UU-macOS-#{version.csv.first}(#{version.csv.second}).dmg",
      verified: "uu.gdl.netease.com/"
  name "UU Booster"
  desc "Network accelerator"
  homepage "https://uu.163.com/down/mac/"

  livecheck do
    url "https://adl.netease.com/d/g/uu/c/uumac?type=pc"
    regex(%r{pc_link.*?/UU[._-]macOS[._-]v?(\d+(?:\.\d+)+)\((\d+)\)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :sierra"

  app "UUBooster.app"

  zap trash: [
    "~/Library/Application Support/com.netease.uumac",
    "~/Library/Caches/com.netease.uumac",
    "~/Library/HTTPStorages/com.netease.uumac",
    "~/Library/WebKit/com.netease.uumac",
  ]
end
