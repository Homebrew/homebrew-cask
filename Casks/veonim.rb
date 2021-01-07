cask "veonim" do
  version "0.22.0"
  sha256 "eea52733b7b94ccb2f60f247f51459574173870db49808b9802981734f1e7921"

  url "https://github.com/veonim/veonim/releases/download/#{version}/veonim-#{version}-mac.zip"
  name "veonim"
  desc "Modal IDE built on neovim"
  homepage "https://github.com/veonim/veonim"

  livecheck do
    url :url
    strategy :git
  end

  app "veonim.app"
end
