# typed: false
# frozen_string_literal: true

cask "xstation5" do
  version "2.34.0-Build.3"
  sha256 :no_check

  url "https://www.xtb.com/pl/xstation5/xStation5-MacOS.dmg"
  name "xStation5"
  desc "Desktop trading platform"
  homepage "https://www.xtb.com/"

  app "xStation5.app"
end
