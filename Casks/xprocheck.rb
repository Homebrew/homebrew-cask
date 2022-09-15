cask "xprocheck" do
  version "1.1,2022.09"
  sha256 "b32e43e0aa21674d3dabb0a1fbb63e678c002e53f2bb2da2fb6b865eae736787"

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
