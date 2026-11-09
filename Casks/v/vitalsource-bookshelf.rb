cask "vitalsource-bookshelf" do
  version "11.4.3.4204"
  sha256 "5bb4b8d305b620979f4b732ccfa9d0077d03f592a26eccdd48c8f2379fa18fca"

  url "https://downloads.vitalbook.com/vsti/bookshelf/#{(version.patch == "0") ? version.major_minor : version.major_minor_patch}/mac/bookshelf/VitalSource-Bookshelf_#{version}.dmg"
  name "VitalSource Bookshelf"
  desc "Access etextbooks"
  homepage "https://www.vitalsource.com/bookshelf-features"

  livecheck do
    url "https://support.vitalsource.com/api/v2/help_center/en-us/articles/360014107913"
    regex(/href=.*?VitalSource[._-]Bookshelf[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on :macos

  app "VitalSource Bookshelf.app"

  uninstall quit: "com.vitalsource.bookshelf"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vitalsource.bookshelf.sfl*",
    "~/Library/Application Support/com.vitalsource.bookshelf",
    "~/Library/HTTPStorages/com.vitalsource.bookshelf",
    "~/Library/Logs/Vitalsource Bookshelf",
    "~/Library/Preferences/com.vitalsource.bookshelf.plist",
  ]
end
