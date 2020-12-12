cask "turtl" do
  version "0.7.2.6"
  sha256 "8b6c71eb35b5a369d8a54417966a7cf4555930254ecea594564494e920fea95f"

  # github.com/turtl/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/turtl/desktop/releases/download/v#{version}-link-notes/turtl-#{version}-link-notes-osx.zip"
  appcast "https://github.com/turtl/desktop/releases.atom"
  name "turtl"
  homepage "https://turtlapp.com/"

  app "Turtl.app"
end
