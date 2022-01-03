cask "ti-connect-ce" do
  version "5.6.3.2278,BC4AE19C4CDF4270B388F7645D4A50ED"
  sha256 "066f86e1a62fe6444a5bd998afe6f95c93f34deadf35d325320ac65d47438488"

  url "https://education.ti.com/download/en/ed-tech/68CEDD34FDC94622B4DBD173E6A0D8C3/#{version.csv.second}/TIConnectCE-#{version.csv.first}.dmg"
  name "TI Connect™ CE"
  desc "Connectivity software for the TI-84 Plus family of graphing calculators"
  homepage "https://education.ti.com/en/products/computer-software/ti-connect-ce-sw"

  livecheck do
    url "https://education.ti.com/en/software/details/en/68CEDD34FDC94622B4DBD173E6A0D8C3/swticonnectcesoftwareformacintosh"
    strategy :page_match do |page|
      page.scan(%r{href=.*?/(\h+)/TIConnectCE[._-]v?(\d+(?:\.\d+)+)\.dmg}i).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  app "TI Connect CE.app"

  zap trash: [
    "~/Library/Logs/Texas Instruments/TI Connect CE",
    "~/Library/Preferences/com.ti.et.elg.tiConnect.TIConnectApplication.plist",
    "~/Library/Saved Application State/com.ti.et.elg.tiConnect.TIConnectApplication.savedState",
  ]
end
