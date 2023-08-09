cask "uncolored" do
  version "0.10.2"
  sha256 "7ac0c07fbe3c0b9b1bf575274e590c7070e9b30f46d16744464ae99d4aed9f07"

  url "https://github.com/n457/Uncolored/releases/download/v.#{version}/Uncolored-v.#{version}-osx-x64.dmg",
      verified: "github.com/n457/Uncolored/"
  name "(Un)colored"
  desc "Rich text (HTML & Markdown) editor that saves documents with themes"
  homepage "https://n457.github.io/Uncolored/"

  livecheck do
    url :url
    regex(/^v?\.?(\d+(?:\.\d+)+)$/i)
  end

  app "Uncolored.app"
end
