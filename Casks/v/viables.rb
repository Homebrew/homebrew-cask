cask "viables" do
  version "1b12,2023.11"
  sha256 "a02832b91b2b1ab1d33698a5100947f956746f11a1ab56473d8ad6b44ffd9b4a"

  url "https://eclecticlight.co/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/viables#{version.csv.first}.zip"
  name "ViableS"
  desc "Create and run sandboxed macOS virtual machines on Apple silicon Macs"
  homepage "https://eclecticlight.co/virtualisation-on-apple-silicon/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+)/(\d+)/viables[._-]?v?(\w+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2]},#{match[0]}.#{match[1]}"
      end
    end
  end

  conflicts_with cask: "viable"
  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "viables#{version.csv.first}/ViableS.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.ViableS",
    "~/Library/HTTPStorages/co.eclecticlight.ViableS",
    "~/Library/Preferences/co.eclecticlight.ViableS.plist",
    "~/Library/Saved Application State/co.eclecticlight.ViableS.savedState",
  ]
end
