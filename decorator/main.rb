require_relative 'simple_writer'
require_relative 'writer_decorator'
require_relative 'numbering_writer'
require_relative 'check_summing_writer'
require_relative 'time_stamping_writer'

writer = CheckSummingWriter.new(TimeStampingWriter.new(NumberingWriter.new(SimpleWriter.new('final.txt'))))
writer.write_line("Hello out there")
writer.close 
puts "checksum: #{writer.check_sum}"
