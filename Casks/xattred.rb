cask "xattred" do
  version "1.3,2020.08"
  sha256 "606823107254a9a66af2c67d0e6aa25ae820d8dfba2be5427325d05c4a5482a7"

  # eclecticlightdotcom.files.wordpress.com/ was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.major}/#{version.after_comma.minor}/xattred#{version.before_comma.no_dots}.zip"
  appcast "https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist&splitter_1=xattred&index_1=1&splitter_2=Version&index_2=1&splitter_3=dict&index_3=0"
  name "xattred"
  desc "Extended attribute editor"
  homepage "https://eclecticlight.co/xattred-sandstrip-xattr-tools/"

  depends_on macos: ">= :el_capitan"

  app "xattred#{version.before_comma.major}#{version.before_comma.minor}/xattred.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.xattred",
    "~/Library/Preferences/co.eclecticlight.xattred.plist",
    "~/Library/Saved Application State/co.eclecticlight.xattred.savedState",
  ]
end
