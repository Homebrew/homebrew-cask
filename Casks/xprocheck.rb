cask "xprocheck" do
  version "1.5,2023.04"
  sha256 "882c1ee83a3bee4372d7afcd9a65b3fa8342282534cbdf21565fe0aa4c87839d"

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
