cask 'uielementinspector' do
  version :latest
  sha256 :no_check

  url 'https://developer.apple.com/library/mac/samplecode/UIElementInspector/UIElementInspector.zip'
  name 'Apple UIElementInspector'
  homepage 'https://developer.apple.com/library/mac/samplecode/UIElementInspector/Introduction/Intro.html'

  app 'UIElementInspector/UIElementInspector.app'
end
