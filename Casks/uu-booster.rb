cask "uu-booster" do
  version "2.7.1,238"
  sha256 "6c5a0a068eab27a2979b4a1a077910cd137a482e23bfba69a94a48031e1dcb6b"

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
