cask "xprocheck" do
  version "1.5,2023.04"
  sha256 "882c1ee83a3bee4372d7afcd9a65b3fa8342282534cbdf21565fe0aa4c87839d"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.csv.second.major}/#{version.csv.second.minor}/xprocheck#{version.csv.first.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "XProCheck"
  desc "Anti-malware scan logging tool"
  homepage "https://eclecticlight.co/consolation-t2m2-and-log-utilities/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    regex(%r{/(\d+)/(\d+)/[^/]+?$}i)
    strategy :xml do |xml, regex|
      item = xml.elements["//dict[key[text()='AppName']/following-sibling::*[1][text()='XProCheck']]"]
      next unless item

      version = item.elements["key[text()='Version']"]&.next_element&.text&.strip
      match = item.elements["key[text()='URL']"]&.next_element&.text&.strip&.match(regex)
      next if version.blank? || match.blank?

      "#{version},#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :catalina"

  app "xprocheck#{version.csv.first.no_dots}/XProCheck.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.XProCheck",
    "~/Library/HTTPStorages/co.eclecticlight.XProCheck",
    "~/Library/Preferences/co.eclecticlight.XProCheck.plist",
    "~/Library/Saved Application State/co.eclecticlight.XProCheck.savedState",
  ]
end
