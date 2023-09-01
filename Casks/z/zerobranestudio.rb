cask "zerobranestudio" do
  version "2.00"
  sha256 "0a9ae408505c9f3396b2c839b94d0f31b3582836cbddd4f1a22c3551384cf19f"

  url "https://download.zerobrane.com/ZeroBraneStudioEduPack-#{version}-macos.dmg"
  name "ZeroBrane Studio"
  desc "Lua IDE"
  homepage "https://studio.zerobrane.com/"

  livecheck do
    url "https://studio.zerobrane.com/download"
    regex(/href=.*?ZeroBraneStudioEduPack[._-]?v?(\d+(?:\.\d+)+)[._-]macos\.dmg/i)
  end

  app "ZeroBraneStudio.app"
end
