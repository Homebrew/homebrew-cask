cask "zerobranestudio" do
  version "2.01"
  sha256 "1a56db6433b6111d24a9853975a5232c07d491a99fee699469c78b342e97440c"

  url "https://download.zerobrane.com/ZeroBraneStudioEduPack-#{version}-macos.dmg"
  name "ZeroBrane Studio"
  desc "Lua IDE"
  homepage "https://studio.zerobrane.com/"

  livecheck do
    url "https://studio.zerobrane.com/download"
    regex(/href=.*?ZeroBraneStudioEduPack[._-]?v?(\d+(?:\.\d+)+)[._-]macos\.dmg/i)
  end

  app "ZeroBraneStudio.app"

  zap trash: "~/Library/Preferences/ZeroBraneStudio Preferences"

  caveats do
    requires_rosetta
  end
end
