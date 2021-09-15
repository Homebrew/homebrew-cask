cask "wing-personal" do
  version "8.0.2.0"

  if Hardware::CPU.intel?
    sha256 "2a4b953bcc849286bfbe2958dc0ab41d3ed2507e4f79a04d319baae8458181d5"

    url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}-intel.dmg"
  else
    sha256 "1d242c6215354e0b8464005a6ea24855a39d27c92a536a39e10faea3570f955f"

    url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}-arm64.dmg"
  end

  name "Wing Personal"
  desc "Free Python IDE designed for students and hobbyists"
  homepage "https://www.wingware.com/"

  livecheck do
    url "https://wingware.com/pub/wing-personal/"
    regex(%r{href="(\d+(?:\.\d+)*)/"}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Wing Personal.app"
end
