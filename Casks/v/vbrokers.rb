cask "vbrokers" do
  version "2.3.512,600004,1698025954"
  sha256 "7d42a514eb2def7fa90c4dd13cd87ced798db2fa8e1762cb2e281e3b18601d8b"

  url "https://r.hstong.com/public/app/Mac/HSTONG_Mac_#{version.csv.second}_#{version.csv.first}_#{version.csv.third}.dmg"
  name "VBrokers"
  desc "Trading platform"
  homepage "https://www.hstong.com/"

  livecheck do
    url "https://www.hstong.com/download"
    regex(%r{href=['"].*?/HSTONG[-_]?Mac[-_]?(\d+)[-_]?(\d+(?:\.\d+)+)[-_]?(\d+).dmg}i)
    strategy :page_match do |page|
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
