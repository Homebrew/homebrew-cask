cask "vitalsource-bookshelf" do
  version "9.3.0.1259"
  sha256 "bc005fc51fc48d0b4d642eba1d79c817e22babc556b7247db4040ba1eb98c511"

  # downloads.vitalbook.com/ was verified as official when first introduced to the cask
  url "https://downloads.vitalbook.com/vsti/bookshelf/#{version.major_minor}/mac/bookshelf/VitalSource-Bookshelf_#{version}.dmg"
  appcast "https://support.vitalsource.com/hc/en-us/articles/360014107913-Mac"
  name "VitalSource Bookshelf"
  homepage "https://www.vitalsource.com/bookshelf-features"

  depends_on macos: ">= :sierra"

  app "VitalSource Bookshelf.app"
end
