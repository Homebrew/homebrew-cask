cask "vitalsource-bookshelf" do
  version "10.5.2.2736"
  sha256 "62c78348a2cccf109146a44a12e364d86882328324833b41f2a0d32fff604413"

  url "https://downloads.vitalbook.com/vsti/bookshelf/#{version.major_minor_patch}/mac/bookshelf/VitalSource-Bookshelf_#{version}.dmg",
      verified: "downloads.vitalbook.com/vsti/bookshelf/"
  name "VitalSource Bookshelf"
  desc "Access etextbooks"
  homepage "https://www.vitalsource.com/bookshelf-features"

  livecheck do
    url "https://support.vitalsource.com/api/v2/help_center/en-us/articles/360014107913"
    regex(/href=.*?VitalSource[-_.]Bookshelf[-_.]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "VitalSource Bookshelf.app"

  zap trash: [
    "~/Library/Application Support/com.vitalsource.bookshelf",
    "~/Library/Logs/Vitalsource Bookshelf",
    "~/Library/Preferences/com.vitalsource.bookshelf.plist",
  ]
end
