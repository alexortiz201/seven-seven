# This is the coute de gras of ruby
# using metaprogramming to write code
# that writes code.

# e.g.
class ActAsCsv
    def self.act_as_csv
        # macro method to define a method
        define_method 'read' do
            file = File.new(self.class.to_s.downcase + '.txt')
            @headers = file.gets.chomp.split(', ')
            
            file.each do |row|
                # push onto @result array
                @result << row.chomp.split(', ')
            end
        end

        define_method 'headers' do
            # Ruby has implicit return of last line executed
            # this means (e.g.)
            # if (true) { this } returns unless there is code after
            @headers
        end

        define_method 'csv_contents' do
            @result
        end

        define_method 'initialize' do
            @result = []
            read
        end
    end
end
