class TvShowTracker < Cask
  url 'http://www.pixelperfectwidgets.com/tvshowtracker/download/tvshowtracker_1.3.3.zip'
  homepage 'http://www.pixelperfectwidgets.com/'
  version '1.3.3'
  sha256 '7e489d50083acc217a7587d800d3f708f0ba586397656cce529e8f40a8a612f9'
  widget 'TV Show Tracker.wdgt'
  caveats do
    puts <<-EOS.undent
    Currently, Dashboard Widgets such as '#{@cask}' do NOT work correctly
    when installed via brew-cask.  The bug is being tracked here:

        https://github.com/phinze/homebrew-cask/issues/2206

    It is recommended that you do not install this Cask unless you are
    a developer working on the problem.

    EOS
    end
end
