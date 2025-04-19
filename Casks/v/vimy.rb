cask "vimy" do
  version "07,2023.11"
  sha256 "b1d9c5eee5d7c82985b88ff3a986e859f94aba4011343d42a6d96e5d818989b9"

  url "https://eclecticlight.co/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/vimy#{version.csv.first}.zip"
  name "Vimy"
  desc "Double-click to run macOS virtual machines on Apple silicon Macs"
  homepage "https://eclecticlight.co/virtualisation-on-apple-silicon/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+)/(\d+)/vimy[._-]?v?(\w+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2]},#{match[0]}.#{match[1]}"
      end
    end
  end

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"
  depends_on cask: "viable"

  app "vimy#{version.csv.first}/Vimy.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.Vimy",
    "~/Library/HTTPStorages/co.eclecticlight.Vimy",
    "~/Library/Preferences/co.eclecticlight.Vimy.plist",
    "~/Library/Saved Application State/co.eclecticlight.Vimy.savedState",
  ]
end
