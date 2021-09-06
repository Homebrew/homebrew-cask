cask "weakauras-companion" do
  version "3.3.4"

  if Hardware::CPU.intel?
    sha256 "aa32f47abe7e51d9f02daceb0e5d0113e526f462c4d3d55443e7ed6da75c1df0"

    url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}-mac-x64.dmg",
        verified: "github.com/WeakAuras/WeakAuras-Companion/"
  else
    sha256 "7ae67ed58b022449cae8579442bbc0a4609f50f717fe008d9275b985da26843c"

    url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}-mac-arm64.dmg",
        verified: "github.com/WeakAuras/WeakAuras-Companion/"
  end

  name "WeakAuras Companion"
  desc "Update your auras from Wago.io and creates regular backups of them"
  homepage "https://weakauras.wtf/"

  app "WeakAuras Companion.app"
end
