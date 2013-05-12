class WithInstallable < TestCask
  url TestHelper.local_binary('MyFancyPkg.zip')
  homepage 'http://example.com/fancy-pkg'
  version '1.2.3'
  sha1 'd3540d05a48518cc808ad854a8ab64da94b635b7'
  install 'Fancy.pkg'
end
