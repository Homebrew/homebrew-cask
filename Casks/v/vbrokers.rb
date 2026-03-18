cask "vbrokers" do
  version "2.8.151,1110127,1773826632"
  sha256 "9017f5641ab91a37563f2cea04d71fae4afbe22e972784b4452d0d81a7d264c2"

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
