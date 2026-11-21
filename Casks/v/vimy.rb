cask "vimy" do
  version "1,2026.11"
  sha256 "d9d4bc3c914bfa1937a2053b3044aa985116427e6427b5fbfd02e37f8c4834de"

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
  depends_on cask: "viable"
  depends_on macos: :sonoma

  app "vimy#{version.csv.first}/Vimy.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.Vimy",
    "~/Library/HTTPStorages/co.eclecticlight.Vimy",
    "~/Library/Preferences/co.eclecticlight.Vimy.plist",
    "~/Library/Saved Application State/co.eclecticlight.Vimy.savedState",
  ]
end
