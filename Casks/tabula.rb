cask "tabula" do
  version "1.2.1"
  sha256 "7f0270ce3db17cfa14a8a111de9fbf39fbdd330d9784796daf13019d08cac140"

  # github.com/tabulapdf/tabula/ was verified as official when first introduced to the cask
  url "https://github.com/tabulapdf/tabula/releases/download/v#{version.major_minor_patch}/tabula-mac-#{version}.zip"
  appcast "https://github.com/tabulapdf/tabula/releases.atom"
  name "Tabula"
  desc "Tool for liberating data tables trapped inside PDF files"
  homepage "https://tabula.technology/"

  app "tabula/Tabula.app"
end
