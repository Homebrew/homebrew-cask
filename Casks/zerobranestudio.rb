cask "zerobranestudio" do
  version "1.90"
  sha256 "61fb075da4d93edeef16e73e1d66c6655c527a11c8f52f29af03906565459c90"

  url "https://download.zerobrane.com/ZeroBraneStudioEduPack-#{version}-macos.dmg"
  appcast "https://raw.githubusercontent.com/pkulchenko/ZeroBraneStudio/master/CHANGELOG.md"
  name "ZeroBrane Studio"
  homepage "https://studio.zerobrane.com/"

  app "ZeroBraneStudio.app"
end
