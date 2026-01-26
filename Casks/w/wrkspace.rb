cask "wrkspace" do
  arch arm: "arm64", intel: "x64"

  version "2.1.1"
  sha256 arm:   "8c8646bc61c855adc27dbdfe6a94223954be904bee961cdc3545000a6c4053ff",
         intel: "31518a410aa9bcb69f23fd8fcd6ee7a8fb2f47ac45ba94e3474a73f73bcdac56"

  url "https://updater.wrkspace.co/download/version/#{version}/darwin-#{arch}"
  name "Wrkspace"
  desc "All-in-one dev bootstrapper: one-click startup Docker, scripts, editor, and URLs"
  homepage "https://wrkspace.co/"

  livecheck do
    url "https://updater.wrkspace.co/update/darwin-#{arch}/0.0.0"
    strategy :json do |json|
      json["name"]
    end
  end

  app "Wrkspace.app"

  zap trash: "~/Library/Application Support/Wrkspace",
      rmdir: "~/Documents/Wrkspace"
end
