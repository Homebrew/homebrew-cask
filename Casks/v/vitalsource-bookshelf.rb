cask "vitalsource-bookshelf" do
  version "11.1.0.3378"
  sha256 "bcfe4951d809255cc09c89179f04db8668683018b19562b81a8e7aab8d058296"

  url "https://downloads.vitalbook.com/vsti/bookshelf/#{version.major_minor}/mac/bookshelf/VitalSource-Bookshelf_#{version}.dmg",
      verified: "downloads.vitalbook.com/vsti/bookshelf/"
  name "VitalSource Bookshelf"
  desc "Access etextbooks"
  homepage "https://www.vitalsource.com/bookshelf-features"

  livecheck do
    url "https://support.vitalsource.com/api/v2/help_center/en-us/articles/360014107913"
    regex(/href=.*?VitalSource[._-]Bookshelf[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "VitalSource Bookshelf.app"

  zap trash: [
    "~/Library/Application Support/com.vitalsource.bookshelf",
    "~/Library/Logs/Vitalsource Bookshelf",
    "~/Library/Preferences/com.vitalsource.bookshelf.plist",
  ]
end
