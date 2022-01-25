cask "vv" do
  version "2.4.9"
  sha256 "cba8568123b666cc25b8427d629c1afed3bf85fab9a59913cc7669ebc38005d4"

  url "https://github.com/vv-vim/vv/releases/download/v#{version}/VV-#{version}.dmg"
  name "VV"
  desc "Neovim client"
  homepage "https://github.com/vv-vim/vv"

  depends_on formula: "neovim"

  app "VV.app"
  binary "#{appdir}/VV.app/Contents/Resources/bin/vv"

  zap trash: "~/Library/Application Support/VV"
end
