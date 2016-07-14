module FileSystemHelpers
    def get_file_content(file_path)
        # use read if file is not too long
        content = File.readlines file_path
        # content.close
    end
end

class ReadFileAndFind
    include FileSystemHelpers

    def find(file_path, val)
        content = self.read_file(file_path)
        self.print_value_line_if_found(content, val)
    end

    def print_value_line_if_found(content, val)
        something_found = false
        
        # grep for val in content
        content.each_with_index do |line, i|
            if line.include?(val)
                self.print_value_line(line, i)
                something_found = true
            end
        end

        puts 'No value matched' if something_found == false
    end

    def print_value_line(line, i)
        puts "#{i+1}: #{line}"
    end

    def read_file(file_path)
        # get file content
        return self.get_file_content(file_path)
    end
end

fh = ReadFileAndFind.new
fh.find('./assets/fileToBeRead.txt', 'Jem')
