cask "vitalsource-bookshelf" do
  version "10.4.1.2502"
  sha256 "9031d926a5ee99f01fd9fbb5a9b90ee4398135ef2df874049ecad25390429eb3"

  url "https://downloads.vitalbook.com/vsti/bookshelf/#{version.major_minor_patch}/mac/bookshelf/VitalSource-Bookshelf_#{version}.dmg",
      verified: "downloads.vitalbook.com/vsti/bookshelf/"
  name "VitalSource Bookshelf"
  desc "Access etextbooks"
  homepage "https://www.vitalsource.com/bookshelf-features"

  livecheck do
    url "https://support.vitalsource.com/hc/en-gb/p/download"
    regex(/href=.*?VitalSource[-_.]Bookshelf[-_.]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :mojave"

  app "VitalSource Bookshelf.app"

  zap trash: [
    "~/Library/Application Support/com.vitalsource.bookshelf",
    "~/Library/Logs/Vitalsource Bookshelf",
    "~/Library/Preferences/com.vitalsource.bookshelf.plist",
  ]
end
