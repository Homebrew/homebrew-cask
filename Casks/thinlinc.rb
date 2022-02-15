cask "thinlinc" do
  version "4.14.0_2324"
  sha256 "3b89908d84d18aeebce842eefb482985771d2b46fdc7bb87104efa1878e4d952"

  url "https://www.cendio.com/downloads/clients/tl-#{version}-client-macos.iso"
  name "Thinlinc"
  desc "Cendios thinlinc client - kinda like vnc over ssh"
  homepage "https://www.cendio.com/thinlinc"

  livecheck do
    url "https://www.cendio.com/thinlinc/download"
    regex(/tl-([0-9]+\.[0-9]+\.[0-9]+_[0-9]+)-client-macos\.iso/i)
  end

  app "ThinLinc Client.app"
end
