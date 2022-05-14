cask "wing-personal" do
  arch = Hardware::CPU.intel? ? "intel" : "arm64"

  version "8.3.1.0"

  if Hardware::CPU.intel?
    sha256 "afc480575ffb6b683e7434b1c8a3202a113e55ad76c8073caf4182ec6292df7b"
  else
    sha256 "72c73019cecbf8f2a2e470997b6e9612f9041eca387cdca76d4b7266af34e49b"
  end

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}-#{arch}.dmg"
  name "Wing Personal"
  desc "Free Python IDE designed for students and hobbyists"
  homepage "https://www.wingware.com/"

  livecheck do
    url "https://wingware.com/pub/wing-personal/"
    regex(%r{href="(\d+(?:\.\d+)+)/"}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Wing Personal.app"
end
