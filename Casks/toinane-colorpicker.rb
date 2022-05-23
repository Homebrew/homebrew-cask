cask "toinane-colorpicker" do
  version "2.1.0"
  sha256 "32216d2594a8181b711e41c41ac43569a32da3afc77dbf0547cf976a10875842"

  url "https://github.com/toinane/colorpicker/releases/download/#{version}/Colorpicker-Darwin.#{version}.dmg",
      verified: "github.com/toinane/colorpicker/"
  name "Colorpicker"
  desc "Get and save color codes"
  homepage "https://colorpicker.fr/"

  app "Colorpicker.app"

  zap trash: "~/Library/Application Support/Colorpicker"
end
