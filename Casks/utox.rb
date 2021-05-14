cask "utox" do
  version "0.17.0"
  sha256 "4ca786a57fdd8f50f210f7ff58c1e7bfd5b9d0575af3d24a7536c1817c8d0232"

  url "https://github.com/uTox/uTox/releases/download/v#{version}/uTox.#{version}.dmg",
      verified: "github.com/uTox/uTox/"
  name "uTox"
  name "µTox"
  desc "Tox client"
  homepage "https://www.tox.chat/"

  app "uTox.app"
end
