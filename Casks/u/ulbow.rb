cask "ulbow" do
  version "1.10,2023.02"
  sha256 "3fdafc940c348f611b784229727bc576b889fcad9a3969ecac3a30f2c33c5c0b"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.csv.second.major}/#{version.csv.second.minor}/ulbow#{version.csv.first.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "Ulbow"
  desc "Log browser"
  homepage "https://eclecticlight.co/consolation-t2m2-and-log-utilities/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    regex(%r{/(\d+)/(\d+)/[^/]+?$}i)
    strategy :xml do |xml, regex|
      item = xml.elements["//dict[key[text()='AppName']/following-sibling::*[1][text()='Ulbow']]"]
      next unless item

      version = item.elements["key[text()='Version']"]&.next_element&.text
      url = item.elements["key[text()='URL']"]&.next_element&.text
      match = url.strip.match(regex) if url
      next if version.blank? || match.blank?

      "#{version.strip},#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "ulbow#{version.csv.first.no_dots}/Ulbow.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.eclecticlight.ulbow.sfl*",
    "~/Library/Caches/co.eclecticlight.Ulbow",
    "~/Library/HTTPStorages/co.eclecticlight.Ulbow",
    "~/Library/Preferences/co.eclecticlight.Ulbow.plist",
    "~/Library/Saved Application State/co.eclecticlight.Ulbow.savedState",
  ]
end
