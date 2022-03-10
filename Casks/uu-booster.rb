cask "uu-booster" do
  version "2.6.6,236"
  sha256 "5c4ac80bfb3998e482eedfc57dba5bd686952012c579e99d5f2e39f2b7c62ba2"

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
