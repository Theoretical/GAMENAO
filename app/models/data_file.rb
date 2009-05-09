class DataFile < ActiveRecord::Base
  
    # pre-conditions:
    #   self.save(upload) must recieve a zip/rar file containing only images
    #   for a chapter
    # post-condictions:
    #   unpacks an archived file and adds a reference to model Manga::Volume::Chapter           
    def self.upload(upload, path)
      name = sanitize_filename(upload['datafile'].original_filename)
      debugger      
      # create filepath
      filepath = File.join(path, name)
      # write the file
      File.open(filepath, "wb") { |f|
        f.write(upload['datafile'].read)
        f.chmod(0644)
      }
      return filepath
    end
   
    def self.sanitize_filename(filename)
      # get only the filename, not the whole path
      strip_filename = File.basename(filename)
      # replace all none alphanumeric, underscores or periods
      strip_filename.sub(/[^\w\.\-]/, '_')
    end

end
