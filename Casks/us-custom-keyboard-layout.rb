# typed: true
# frozen_string_literal: true

cask "us-custom-keyboard-layout" do
  version "2015-06-29"
  sha256 "964bd324fe6e422ac79f75e8e9a327bb019ae7b89e7f87e76635eddd8a91731a"

  url "https://downloads.sourceforge.net/uscustom/uscustom.#{version}.zip"
  name "U.S. custom Keyboard Layout"
  desc "US keyboard layout which maps the § symbol to a Compose key"
  homepage "https://uscustom.sourceforge.net/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  keyboard_layout "uscustom.#{version}/U.S. custom.bundle"

  caveats do
    reboot
  end
end
