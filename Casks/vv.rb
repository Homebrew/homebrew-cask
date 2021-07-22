cask "vv" do
  version "2.4.6"
  sha256 "372f92131bf200075565c3a9fe010baefbaa5d2cc783bd0acd9ed1f4eaea9e75"

  url "https://github.com/vv-vim/vv/releases/download/v#{version}/VV-#{version}.dmg"
  name "VV"
  desc "Neovim client"
  homepage "https://github.com/vv-vim/vv"

  depends_on formula: "neovim"

  app "VV.app"
  binary "#{appdir}/VV.app/Contents/Resources/bin/vv"

  zap trash: "~/Library/Application Support/VV"
end
