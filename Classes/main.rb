class Party
@@attendee_count = 0
@@attendee_list = []

  # Create Class 

  def intitialize
    @attendee_count = 0
    @attendee_list = []
  end

  def add_attendee(name)
    @@attendee_count += 1
    @@attendee_list.push(name)
end

  def print_attendees
    puts "Total Attendee Count: #{@@attendee_count}"
    puts "Attendee Names: "
    @@attendee_list.each { |attendee| puts attendee }
  end
end

# Create instance
party_1 = Party.new()
party_1.add_attendee('nolan')
party_1.add_attendee('will')
party_1.add_attendee('german')
party_1.add_attendee('jacob')
party_1.add_attendee('patrick')
puts party_1.attendee_count


party_2 = Party.new
party_2.add_attendee('zolan')
party_2.add_attendee('Tom')
party_2.add_attendee('Trevor')

party_2 = Party.new
party_2.print_attendees


# A class is a template so the computer knows what real world things are.

# Atribute Accessor. We can use symbols to access values. 

attr_accessor : attendee_count, :attendee_list

# Writer 
attr_writer :attendee_count, :attendee_list