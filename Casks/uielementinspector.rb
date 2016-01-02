cask 'uielementinspector' do
  version :latest
  sha256 :no_check

  url 'http://developer.apple.com/library/mac/samplecode/UIElementInspector/UIElementInspector.zip'
  name 'Apple UIElementInspector'
  homepage 'https://developer.apple.com/library/mac/samplecode/UIElementInspector/Introduction/Intro.html'
  license :gratis

  app 'UIElementInspector/UIElementInspector.app'
end
