cask "uu-booster" do
  version "2.7.0,237"
  sha256 "e64ba37e7db073354899bd64d09a2fc308800b5d1f6d2d31785391023f76c025"

  url "https://uu.gdl.netease.com/UU-macOS-#{version.csv.first}(#{version.csv.second}).dmg",
      verified: "uu.gdl.netease.com/"
  name "UU Booster"
  desc "Network accelerator"
  homepage "https://uu.163.com/down/mac/"

  livecheck do
    url "https://adl.netease.com/d/g/uu/c/uumac?type=pc"
    strategy :page_match do |page|
      match = page.match(%r{pc_link.*?/UU[._-]macOS[._-]v?(\d+(?:\.\d+)+)\((\d+)\)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "UUBooster.app"
end
