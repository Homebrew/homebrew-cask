cask "teleport-tsh" do
  version "11.1.2"
  sha256 "3a9efbc794fc4a64b17d7a6f95fd777f5fac457f9456ac5faaace7aa9e966fc2"

  url "https://get.gravitational.com/tsh-#{version}.pkg"
  name "Teleport TSH"
  desc "Modern SSH server for teams managing distributed infrastructure (tsh client)"
  homepage "https://gravitational.com/teleport"

  livecheck do
    formula "teleport"
  end

  conflicts_with formula: %w[
    teleport
  ]

  pkg "tsh-#{version}.pkg"

  uninstall pkgutil: "(.*).com.gravitational.teleport.tsh"
end
