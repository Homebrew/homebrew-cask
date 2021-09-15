cask "vv" do
  version "2.4.7"
  sha256 "867cbde494f7a447fd56efe9efc644e0cc546c5168277eeab8d6cea89af46c31"

  url "https://github.com/vv-vim/vv/releases/download/v#{version}/VV-#{version}.dmg"
  name "VV"
  desc "Neovim client"
  homepage "https://github.com/vv-vim/vv"

  depends_on formula: "neovim"

  app "VV.app"
  binary "#{appdir}/VV.app/Contents/Resources/bin/vv"

  zap trash: "~/Library/Application Support/VV"
end
