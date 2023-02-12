cask "ulbow" do
  version "1.9,2023.02"
  sha256 "143416ad2214e6b44036bd9570c524d859e7a29cbbfc50e229d00854f131e761"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.csv.second.major}/#{version.csv.second.minor}/ulbow#{version.csv.first.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "Ulbow"
  desc "Log browser"
  homepage "https://eclecticlight.co/consolation-t2m2-and-log-utilities/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    strategy :page_match do |page|
      match = page.match(%r{/(\d+)/(\d+)/ulbow(\d+)\.zip}i)
      next if match.blank?

      "#{match[3].split("", 2).join(".")},#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "ulbow#{version.csv.first.no_dots}/Ulbow.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.Ulbow",
    "~/Library/HTTPStorages/co.eclecticlight.Ulbow",
    "~/Library/Preferences/co.eclecticlight.Ulbow.plist",
    "~/Library/Saved Application State/co.eclecticlight.Ulbow.savedState",
  ]
end
