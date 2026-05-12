cask "vbrokers" do
  version "2.8.316,1110127,1778057510"
  sha256 "7395fb9a2554ae310dc60184a9e93b38a9014e783ce1d2c9988756cbcec0e575"

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

  depends_on :macos

  # Rename to match displayed name
  app "HSTong.app", target: "VBrokers.app"

  zap trash: [
    "~/Library/Application Scripts/com.hszq.HSSecuritiesForMac",
    "~/Library/Containers/com.hszq.HSSecuritiesForMac",
  ]
end
