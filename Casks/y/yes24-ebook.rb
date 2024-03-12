cask "yes24-ebook" do
  version "1.0.1.11001"
  sha256 "1b4edec91b05b1151eee8ff06115136baf4962952d588278912305598c6a66e0"

  url "http://cdn.k-epub.com/UPGRADE/PC_CREMA/mac/#{version}/Yes24eBook.dmg",
      verified: "cdn.k-epub.com/UPGRADE/"
  name "yes24-ebook"
  desc "Crema Ebook reader for Yes24"
  homepage "https://www.yes24.com/Main/default.aspx"

  livecheck do
    url "https://cremaupdate.k-epub.com/sv_update.aspx?usrid=&old=0"
    regex(%r{/([^/]+)/Yes24eBook\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "YES24_eBook.app"

  zap trash: [
    "~/Library/Application Scripts/com.yes24.macEBook",
    "~/Library/Containers/com.yes24.macEBook",
  ]
end
