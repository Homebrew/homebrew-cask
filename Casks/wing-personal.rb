cask "wing-personal" do
  version "8.0.4.0"

  if Hardware::CPU.intel?
    sha256 "b64920cae3308f38396e3ffd5e7345c872f44db4462cce34fe6f016179da2392"

    url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}-intel.dmg"
  else
    sha256 "e1461efb56477d4137a3a35063a94f4738241ebf2bf73caaca620ebd04f6a2dc"

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
