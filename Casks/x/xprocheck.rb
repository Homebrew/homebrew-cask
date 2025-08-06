cask "xprocheck" do
  version "1.7,2025.06"
  sha256 "72178e9e80b36f84e4213926a9d26c9f909f81540efc5077bd8cdd82ac8ffe3f"

  url "https://eclecticlight.co/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/xprocheck#{version.csv.first.no_dots}.zip"
  name "XProCheck"
  desc "Anti-malware scan logging tool"
  homepage "https://eclecticlight.co/consolation-t2m2-and-log-utilities/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    regex(%r{/(\d+)/(\d+)/[^/]+?$}i)
    strategy :xml do |xml, regex|
      item = xml.elements["//dict[key[text()='AppName']/following-sibling::*[1][text()='XProCheck']]"]
      next unless item

      version = item.elements["key[text()='Version']"]&.next_element&.text
      url = item.elements["key[text()='URL']"]&.next_element&.text
      match = url.strip.match(regex) if url
      next if version.blank? || match.blank?

      "#{version.strip},#{match[1]}.#{match[2]}"
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
