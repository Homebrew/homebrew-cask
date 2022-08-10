cask "ti-connect-ce" do
  version "6.0.0.2688,AA12D43FDDB74EBA8E16525AD0F2E4F3"
  sha256 "3dbe512d4e6dbb25c010917088bf23e868a5695089068098d70379a3f368be2e"

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
