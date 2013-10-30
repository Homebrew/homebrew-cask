class Cask::CLI::Fetch
  def self.run(*args)
    grab_results = {}
    args.each do |cask_name|
      begin
       cask = Cask.load(cask_name)
       grab_results[cask_name] = grab(cask, destdir)
      rescue CaskError => e
        onoe e
      end
    end
    grab_results
  end

  def self.help
    "downloads and copies a Cask's installer to CASK_FETCH_DIR, or ~/Downloads/Cask if undefined, or finally (as a fallback) to the current directory."
  end

  def self.grab(cask, dest)
    Cask::SystemCommand.run!("mkdir -p \"#{dest}\"", {})
    downloaded_path = Cask::Download.new(cask).perform
    Cask::SystemCommand.run!("cp \"#{downloaded_path}\" \"#{dest}/\"", {})
    ohai "Downloaded to #{dest}#{downloaded_path.to_s.split('/').last}"
    downloaded_path
  end

  def self.destdir
    download_to = ENV['CASK_FETCH_DIR'] || "#{ENV['HOME']}/Downloads/Cask/" || ENV['PWD']
    download_to += "/" unless (download_to.chars.last == '/')
    download_to
  end

end
