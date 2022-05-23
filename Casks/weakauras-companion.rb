cask "weakauras-companion" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.0.0"

  url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}-mac-#{arch}.dmg",
      verified: "github.com/WeakAuras/WeakAuras-Companion/"
  if Hardware::CPU.intel?
    sha256 "4185b8d9f219afe6aeb76961d954e8e401f77796f875ae25b39a491cfbb2fa7a"
  else
    sha256 "6e53cec3ced411aa5a296025b9de9a86bbd469f06bf33eb9a4bcef9ce35e74da"
  end

  name "WeakAuras Companion"
  desc "Update your auras from Wago.io and creates regular backups of them"
  homepage "https://weakauras.wtf/"

  app "WeakAuras Companion.app"
end
