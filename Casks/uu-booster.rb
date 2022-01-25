cask "uu-booster" do
  version "2.6.5,233"
  sha256 "8fae51e2584a704e775c0f33e292499c4a6126f21646bd5f3b4c5aca3a539b32"

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
