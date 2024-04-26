cask "viable" do
  version "1b12,2023.11"
  sha256 "6613cf7f0ae9a6737eeec8a15f3110e53cb6986b51f3a236913046e8d3769d00"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.csv.second.major}/#{version.csv.second.minor}/viable#{version.csv.first}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "Viable"
  desc "Create and run macOS virtual machines on Apple silicon Macs"
  homepage "https://eclecticlight.co/virtualisation-on-apple-silicon/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+)/(\d+)/viable[._-]?v?(\w+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2]},#{match[0]}.#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :monterey"

  app "viable#{version.csv.first}/Viable.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.Viable",
    "~/Library/HTTPStorages/co.eclecticlight.Viable",
    "~/Library/Preferences/co.eclecticlight.Viable.plist",
    "~/Library/Saved Application State/co.eclecticlight.Viable.savedState",
  ]
end
