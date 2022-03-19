cask "vitalsource-bookshelf" do
  version "10.1.0.1405"
  sha256 "8d887ac7eb5092292938d79c703256e6ae47f8044441d8fc09a54e12825627ca"

  url "https://downloads.vitalbook.com/vsti/bookshelf/#{version.major_minor}/mac/bookshelf/VitalSource-Bookshelf_#{version}.dmg",
      verified: "downloads.vitalbook.com/vsti/bookshelf"
  name "VitalSource Bookshelf"
  desc "Access eTextbooks"
  homepage "https://www.vitalsource.com/bookshelf-features"

  livecheck do
    url "https://support.vitalsource.com/api/v2/help_center/en-us/articles/360014107913"
    regex(/href=.*?VitalSource-Bookshelf[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "VitalSource Bookshelf.app"

  zap trash: [
    "~/Library/Application Support/com.vitalsource.bookshelf",
    "~/Library/Logs/Vitalsource Bookshelf",
    "~/Library/Preferences/com.vitalsource.bookshelf.plist",
  ]
end
