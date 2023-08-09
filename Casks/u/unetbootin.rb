cask "unetbootin" do
  version "702"
  sha256 "204f867e9b2604a5ba8818b7d7f4be83d08fa0c3eb0c22e51c39fc5526bd1aed"

  url "https://github.com/unetbootin/unetbootin/releases/download/#{version}/unetbootin-mac-#{version}.dmg",
      verified: "github.com/unetbootin/unetbootin/"
  name "UNetbootin"
  desc "Tool to install Linux/BSD distributions to a partition or USB drive"
  homepage "https://unetbootin.github.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)*)$/i)
  end

  app "unetbootin.app"

  zap trash: "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.yourcompany.unetbootin.sfl*"
end
