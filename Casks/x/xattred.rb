cask "xattred" do
  version "1.7,2025.12"
  sha256 "74ef7894a18bd6ea828a300fb8b3ca583826ce99e3b54939ec87a3d56a5ba803"

  url "https://eclecticlight.co/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/xattred#{version.csv.first.no_dots}.zip"
  name "xattred"
  desc "Extended attribute editor"
  homepage "https://eclecticlight.co/xattred-sandstrip-xattr-tools/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    regex(%r{/(\d+)/(\d+)/[^/]+?$}i)
    strategy :xml do |xml, regex|
      item = xml.elements["//dict[key[text()='AppName']/following-sibling::*[1][text()='xattred']]"]
      next unless item

      version = item.elements["key[text()='Version']"]&.next_element&.text
      url = item.elements["key[text()='URL']"]&.next_element&.text
      match = url.strip.match(regex) if url
      next if version.blank? || match.blank?

      "#{version.strip},#{match[1]}.#{match[2]}"
    end
  end

  app "xattred#{version.csv.first.major}#{version.csv.first.minor}/xattred.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.eclecticlight.xattred.sfl*",
    "~/Library/Caches/co.eclecticlight.xattred",
    "~/Library/HTTPStorages/co.eclecticlight.xattred",
    "~/Library/Preferences/co.eclecticlight.xattred.plist",
    "~/Library/Saved Application State/co.eclecticlight.xattred.savedState",
  ]
end
