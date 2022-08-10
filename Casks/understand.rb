cask "understand" do
  version "6.2.1113"
  sha256 "31ad0b9c5c6f7fe8fe88b562c05d885c98d3199a447a91b0ac54db18e97e25fe"

  url "https://latest.scitools.com/Understand/Understand-#{version}-MacOSX-x86.dmg"
  name "SciTools Understand"
  desc "Code visualization and exploration tool"
  homepage "https://scitools.com/features/"

  livecheck do
    url "https://licensing.scitools.com/download/thanks/MacOSX-x86.dmg"
    regex(/Understand[._-]v?(\d+(?:\.\d+)+)[._-]MacOSX[._-]x86\.dmg/i)
  end

  app "Understand.app"
end
