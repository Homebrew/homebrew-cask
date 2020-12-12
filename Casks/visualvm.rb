cask "visualvm" do
  version "2.0.5"
  sha256 "5173ad57f63addbac2469b694a85dd3917c6a2313dee683b02e968a1bfc11145"

  # github.com/oracle/visualvm/ was verified as official when first introduced to the cask
  url "https://github.com/oracle/visualvm/releases/download/#{version}/VisualVM_#{version.no_dots}.dmg"
  appcast "https://github.com/oracle/visualvm/releases.atom"
  name "VisualVM"
  homepage "https://visualvm.github.io/"

  app "VisualVM.app"

  caveats do
    depends_on_java
  end
end
