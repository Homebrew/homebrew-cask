cask "uu-booster" do
  version "2.7.4,241"
  sha256 "b5c4a594bfec0d77dcb214ba1054018c411982d7ae3f8e26d915995bf767f720"

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
