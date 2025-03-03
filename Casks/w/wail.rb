cask "wail" do
  version "0.2025.03.03"
  sha256 "534858b2b542af575788c2b6c223e5716ab8dd42684f23a54e0753583ed238c1"

  url "https://github.com/machawk1/wail/releases/download/v#{version}/WAIL_v#{version}_macOS.dmg"
  name "WAIL"
  desc "Web Archiving Integration Layer: One-Click User Instigated Preservation"
  homepage "https://github.com/machawk1/wail"

  app "WAIL.app"
end
