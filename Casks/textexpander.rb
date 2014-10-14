class Textexpander < Cask
  version '4.3.4'
  sha256 'f5862333a3c9da5292c9c91bff55a3c7a1358481aa6871237b9661a22694eda1'

  url "http://cdn.smilesoftware.com/TextExpander_#{version}.zip"
  appcast 'http://updates.smilesoftware.com/com.smileonmymac.textexpander.xml'
  homepage 'http://www.smilesoftware.com/TextExpander/index.html'
  license :unknown

  app 'TextExpander.app'
end
