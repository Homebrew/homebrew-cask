cask "xattred" do
  version "1.5,2023.05"
  sha256 "044fdd02921e867a4dd78b3979c55d8efacbd526ea4fcc5bc560523d58bc66b6"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.csv.second.major}/#{version.csv.second.minor}/xattred#{version.csv.first.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "xattred"
  desc "Extended attribute editor"
  homepage "https://eclecticlight.co/xattred-sandstrip-xattr-tools/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    regex(%r{/(\d+)/(\d+)/xattred(\d+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2].split("", 2).join(".")},#{match[0]}.#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :el_capitan"

  app "xattred#{version.csv.first.major}#{version.csv.first.minor}/xattred.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.xattred",
    "~/Library/Preferences/co.eclecticlight.xattred.plist",
    "~/Library/Saved Application State/co.eclecticlight.xattred.savedState",
  ]
end
