cask "viable" do
  version "11a,2026.11"
  sha256 "aed6d82320da4bef1bc84f012f703965b21a2fde445f44f0146b6cb874f72e49"

  url "https://eclecticlight.co/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/viable#{version.csv.first}.zip"
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

  conflicts_with cask: "viables"
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "viable#{version.csv.first}/Viable.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.Viable",
    "~/Library/HTTPStorages/co.eclecticlight.Viable",
    "~/Library/Preferences/co.eclecticlight.Viable.plist",
    "~/Library/Saved Application State/co.eclecticlight.Viable.savedState",
  ]
end
