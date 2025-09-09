cask "vbrokers" do
  version "2.6.915,600001,1757381897"
  sha256 "9bd6f25c7c57a7d9bfee800470bc9af31b9ce82121bb105ea54414e4b887af4c"

  url "https://r.hstong.com/public/app/Mac/HSTONG_Mac_#{version.csv.second}_#{version.csv.first}_#{version.csv.third}.dmg"
  name "VBrokers"
  desc "Trading platform"
  homepage "https://www.hstong.com/"

  livecheck do
    url "https://www.hstong.com/download"
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
