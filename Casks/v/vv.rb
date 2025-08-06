cask "vv" do
  version "2.6.1"
  sha256 "2b0d435fa3d1781289c3a090c4af1d4d0fea82fd8cf4ddafa23eab1a3af07839"

  url "https://github.com/vv-vim/vv/releases/download/v#{version}/VV-#{version}-universal.dmg"
  name "VV"
  desc "Neovim client"
  homepage "https://github.com/vv-vim/vv"

  depends_on formula: "neovim"
  depends_on macos: ">= :catalina"

  app "VV.app"
  binary "#{appdir}/VV.app/Contents/Resources/bin/vv"

  zap trash: "~/Library/Application Support/VV"
end
