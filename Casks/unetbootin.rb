cask "unetbootin" do
  version "700"
  sha256 "8f5f264cc44d80d56781c688f4a8aa877a928fbda32d98ba5501e17e5f6bcdd3"

  url "https://github.com/unetbootin/unetbootin/releases/download/#{version}/unetbootin-mac-#{version}.dmg",
      verified: "github.com/unetbootin/unetbootin/"
  name "UNetbootin"
  desc "Tool to install Linux/BSD distributions to a partition or USB drive"
  homepage "https://unetbootin.github.io/"

  livecheck do
    url :url
    strategy :git
    regex(/^(\d+(?:\.\d+)*)$/i)
  end

  app "unetbootin.app"

  zap trash: "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.yourcompany.unetbootin.sfl*"
end
