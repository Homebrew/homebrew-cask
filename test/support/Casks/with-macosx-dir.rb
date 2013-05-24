class WithMacosxDir < TestCask
  url TestHelper.local_binary('MyFancyApp.zip')
  homepage 'http://example.com/MyFancyApp'
  version '1.2.3'
  sha1 'b0475c34136c8e00ceb4b95c245291d53d5deab3'
  link 'MyFancyApp.app'
end
