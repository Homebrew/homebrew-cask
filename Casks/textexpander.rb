cask "textexpander" do
  version "6.5.6"
  sha256 "ec2bfd8336d27a2a31c9d42a4ffafac37c54aef852eb6edb54927e4043878432"

  # cdn.textexpander.com/mac/ was verified as official when first introduced to the cask
  url "https://cdn.textexpander.com/mac/TextExpander_#{version}.zip"
  appcast "https://smilesoftware.com/appcast/TextExpander#{version.major}.xml"
  name "TextExpander"
  desc "Inserts pre-made snippets of text anywhere"
  homepage "https://smilesoftware.com/TextExpander"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TextExpander.app"

  zap trash: "~/Library/Application Support/TextExpander/"
end
