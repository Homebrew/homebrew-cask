cask "vitalsource-bookshelf" do
  version "11.4.0.4031"
  sha256 "f4a44168f8f829dcc277d78c7443d9113667c241fdedd3d976df3e64b818d48c"

  url "https://downloads.vitalbook.com/vsti/bookshelf/#{(version.patch == "0") ? version.major_minor : version.major_minor_patch}/mac/bookshelf/VitalSource-Bookshelf_#{version}.dmg",
      verified: "downloads.vitalbook.com/vsti/bookshelf/"
  name "VitalSource Bookshelf"
  desc "Access etextbooks"
  homepage "https://www.vitalsource.com/bookshelf-features"

  livecheck do
    url "https://support.vitalsource.com/api/v2/help_center/en-us/articles/360014107913"
    regex(/href=.*?VitalSource[._-]Bookshelf[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: :big_sur

  app "VitalSource Bookshelf.app"

  zap trash: [
    "~/Library/Application Support/com.vitalsource.bookshelf",
    "~/Library/Logs/Vitalsource Bookshelf",
    "~/Library/Preferences/com.vitalsource.bookshelf.plist",
  ]
end
