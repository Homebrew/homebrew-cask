cask "thinlinc-client" do
  version "4.14.0_2324"
  sha256 "3b89908d84d18aeebce842eefb482985771d2b46fdc7bb87104efa1878e4d952"

  url "https://www.cendio.com/downloads/clients/tl-#{version}-client-macos.iso"
  name "ThinLinc"
  desc "Linux remote desktop server"
  homepage "https://www.cendio.com/thinlinc"

  livecheck do
    url "https://www.cendio.com/thinlinc/download"
    regex(/tl[._-]v?(\d+(?:.\d+)+)[._-]client[._-]macos\.iso/i)
  end

  app "ThinLinc Client.app"

  # zap as discussed https://github.com/Homebrew/homebrew-cask/pull/119225#pullrequestreview-883188247
  # it appears as thinlinc dosnt persist data anywhere else except saved state
  zap trash: [
    "~/.thinlinc",
  ]
end
