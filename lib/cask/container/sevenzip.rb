class Cask::Container::SevenZip < Cask::Container::GenericUnar
  def self.me?(criteria)
    # todo: cover self-extracting archives
    criteria.extension '7z' and
      criteria.file.include? 'application/octet-stream;' and
        criteria.magic_number(2, '7z'.unpack('C*')) and
          ! criteria.lsar.nil? and
            criteria.lsar.split("\n").first.split(':').last.include?('7-Zip') and
              super
  end
end
