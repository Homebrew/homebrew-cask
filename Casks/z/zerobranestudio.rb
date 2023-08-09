cask "zerobranestudio" do
  version "1.90"
  sha256 "61fb075da4d93edeef16e73e1d66c6655c527a11c8f52f29af03906565459c90"

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
