cask "yes24-ebook" do
  version "1.0.1.12001"
  sha256 "b2be9ddf88af78e0c9ca6e91fa97ccedc87b55b66e561fb767db46aaf4afda36"

  url "https://ebookcdn.yes24.com/UPGRADE/PC_CREMA/mac/#{version}/YES24eBook.dmg"
  name "YES24eBook"
  desc "Crema Ebook reader for Yes24"
  homepage "https://www.yes24.com/Main/default.aspx"

  livecheck do
    url "https://cremaupdate.k-epub.com/sv_update.aspx?usrid=&old=0"
    regex(%r{/v?(\d+(?:\.\d+)+)/YES24eBook\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "YES24eBook.app"

  zap trash: [
    "~/Library/Application Scripts/com.yes24.macEBook",
    "~/Library/Containers/com.yes24.macEBook",
  ]
end
