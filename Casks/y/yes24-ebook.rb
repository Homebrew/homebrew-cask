cask "yes24-ebook" do
  version "1.0"
  sha256 :no_check

  url "https://cdn.k-epub.com/UPGRADE/MAC_YES24/PACKAGE/YES24eBook.dmg",
      verified: "cdn.k-epub.com/UPGRADE/MAC_YES24/"
  name "yes24-ebook"
  desc "Crema Ebook reader for Yes24"
  homepage "https://www.yes24.com/"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :big_sur"

  app "YES24_eBook.app"

  zap trash: "~/Library/Containers/com.yes24.macEBook"
end
