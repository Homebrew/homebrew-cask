cask "vbrokers" do
  version "2.4.406,600004,1719555134"
  sha256 "3724defc7fb4e87a7a9b84c861b30c56429b92382c67c84266564b1879cb2db9"

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
