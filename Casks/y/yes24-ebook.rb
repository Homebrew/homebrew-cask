cask "yes24-ebook" do
  version "1.0.1.17"
  sha256 "e37845aec8ca49dac93a63e7343cc4b4042436cc412939f0179200ad0e0633e8"

  url "https://ebookcdn.yes24.com/UPGRADE/PC_CREMA/mac/#{version}/YES24eBook.dmg"
  name "YES24eBook"
  desc "Crema Ebook reader for Yes24"
  homepage "https://www.yes24.com/Main/default.aspx"

  livecheck do
    url "https://cremaupdate.k-epub.com/sv_update.aspx?usrid=&old=0"
    regex(%r{/v?(\d+(?:\.\d+)+)/YES24eBook\.dmg}i)
    strategy :xml do |xml, regex|
      url = xml.elements["//PATH"]&.text&.strip
      match = url.match(regex) if url
      next if match.blank?

      match[1]
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "YES24_eBook.app"

  zap trash: [
    "~/Library/Application Scripts/com.yes24.macEBook",
    "~/Library/Containers/com.yes24.macEBook",
  ]
end
