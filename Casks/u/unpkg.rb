cask "unpkg" do
  version "5.0"
  sha256 "3a5936d16cf579cad9949af4673b7fc097b9aedc59d50b28c6f75c2b15a4631b"

  url "https://www.timdoug.com/unpkg/unpkg-#{version}.dmg"
  name "unpkg"
  desc "Unarchiver for .pkg and .mpkg that unpacks all the files in a package"
  homepage "https://www.timdoug.com/unpkg/"

  livecheck do
    url :homepage
    regex(/href=.*?unpkg[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "unpkg.app"

  zap trash: [
    "~/Library/Preferences/org.timdoug.unpkg.plist",
    "~/Library/Saved Application State/org.timdoug.unpkg.savedState",
  ]
end
