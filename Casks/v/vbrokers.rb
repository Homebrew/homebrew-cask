cask "vbrokers" do
  version "2.8.708,1110127,1785737071"
  sha256 "fc2b6b7254063905a50ce057047830272cd95ac320736156a56b37b50c6b5731"

  url "https://r.hstong.com/public/app/Mac/HSTONG_Mac_#{version.csv.second}_#{version.csv.first}_#{version.csv.third}.dmg"
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

  depends_on :macos

  # Rename to match displayed name
  app "HSTong.app", target: "VBrokers.app"

  zap trash: [
    "~/Library/Application Scripts/com.hszq.HSSecuritiesForMac",
    "~/Library/Containers/com.hszq.HSSecuritiesForMac",
  ]
end
