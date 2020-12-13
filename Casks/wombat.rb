cask "wombat" do
  version "0.3.3"
  sha256 "d583805f6a49e599626f868f17e6946a38d050fbb1d866e00bc17d2eb8c4b281"

  url "https://github.com/rogchap/wombat/releases/download/v#{version}/Wombat_v#{version}_Darwin_x86_64.dmg"
  appcast "https://github.com/rogchap/wombat/releases.atom"
  name "Wombat"
  desc "Cross platform gRPC client"
  homepage "https://github.com/rogchap/wombat"

  app "Wombat.app"

  zap trash: "~/Library/Application Support/Wombat"
end
