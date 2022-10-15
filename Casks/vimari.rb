cask "vimari" do
  version "2.1.0"
  sha256 "8bea73f879d70a9e7567d192980d18da449be40342dd6a1d8faf3399c998ca25"

  url "https://github.com/televator-apps/vimari/releases/download/v#{version}/Vimari.app.zip"
  name "Vimari"
  desc "Safari port of vimium"
  homepage "https://github.com/televator-apps/vimari"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "Vimari.app"
end
