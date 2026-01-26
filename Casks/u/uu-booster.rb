cask "uu-booster" do
  version "2.8.14"
  sha256 "7db0797d9499145404f25a7a27bfdc8f7defd5e6f230d3d7097a22298124cfda"

  url "https://uu.gdl.netease.com/UU-macOS-#{version}.dmg",
      verified: "uu.gdl.netease.com/"
  name "UU Booster"
  desc "Network accelerator"
  homepage "https://uu.163.com/down/mac/"

  livecheck do
    url "https://adl.netease.com/d/g/uu/c/uumac?type=pc"
    regex(%r{pc_link.*?/UU[._-]macOS[._-]v?(\d+(?:\.\d+)+).dmg}i)
  end

  app "UUBooster.app"

  zap trash: [
    "~/Library/Application Support/com.netease.uumac",
    "~/Library/Caches/com.netease.uumac",
    "~/Library/HTTPStorages/com.netease.uumac",
    "~/Library/WebKit/com.netease.uumac",
  ]
end
