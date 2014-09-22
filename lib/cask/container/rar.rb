class Cask::Container::Rar < Cask::Container::GenericUnar
  def self.me?(criteria)
    (criteria.file.include? 'application/x-rar;' or
     criteria.file.include? 'application/octet-stream;') and
       ! criteria.lsar.nil? and
         criteria.lsar.split("\n").first.split(':').last.include?('RAR') and
           super
  end
end
