cask "xprocheck" do
  version "1.3,2022.12"
  sha256 "07dfad39797bf3a4e5fcaf60b3ec806c282187b2199b67e5689bc758675b4352"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.csv.second.major}/#{version.csv.second.minor}/xprocheck#{version.csv.first.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "XProCheck"
  desc "Anti-malware scan logging tool"
  homepage "https://eclecticlight.co/consolation-t2m2-and-log-utilities/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(%r{/(\d+)/(\d+)/xprocheck(\d+)\.zip}i)
      next if match.blank?

      "#{match[3].split("", 2).join(".")},#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :catalina"

  app "xprocheck#{version.csv.first.no_dots}/XProCheck.app"

  zap trash: "~/Library/Saved Application State/co.eclecticlight.XProCheck.savedState"
end
