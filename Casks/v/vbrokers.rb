cask "vbrokers" do
  version "2.7.110,1110127,1759029298"
  sha256 "4cc1a2c5532550f7532de3c778a41cb8b4dc96b32b907e1c2f9ed0aa8e6af7fb"

  url "https://r.hstong.com/public/app/Mac/HSTONG_Mac_#{version.csv.second}_#{version.csv.first}_#{version.csv.third}.dmg",
      verified: "r.hstong.com/"
  name "VBrokers"
  desc "Trading platform"
  homepage "https://www.vbkr.com/"

  livecheck do
    url "https://www.vbkr.com/download"
    regex(%r{href=['"].*?/HSTONG[-_]?Mac[-_]?(\d+)[-_]?(\d+(?:\.\d+)+)[-_]?(\d+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex)
          .map { |match| "#{match[1]},#{match[0]},#{match[2]}" }
    end
  end

  # Rename to match displayed name
  app "HSTong.app", target: "VBrokers.app"

  zap trash: [
    "~/Library/Application Scripts/com.hszq.HSSecuritiesForMac",
    "~/Library/Containers/com.hszq.HSSecuritiesForMac",
  ]
end
