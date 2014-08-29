=begin
Creating an object which acts like a ticket. When asked, it will provide infos about:
  when              # 01/02/03
  where             # Town Hall
  name of event     # Author's reading
  performer         # Mark Twain
  which seat        # Second Balcony, row J, seat 12
  price             # $5.50
=end

ticket = Object.new

def ticket.venue
  "Town Hall"
end

def ticket.performer
  "Mark Twain"
end

def ticket.event
  "Author's reading"
end

def ticket.price
  5.50
end

def ticket.seat
  "Second Balcony, row J, seat 12"
end

def ticket.date
  "01/02/03"
end

print "Information desired:"
request = gets.chomp

if ticket.respond_to?(request)
  puts ticket.send(request)
else
  puts "No such information available."
end

print "This is a ticket for: "
print ticket.event + ", at "
print ticket.venue + ", on "
puts ticket.date + "."
print "The performer is "
puts ticket.performer + "."
print "The seat is "
print ticket.seat + ", "
print "and it costs $"
puts "%.2f." % ticket.price

puts "Shortening the ticket code via interpolation"
puts "This is a ticket for: #{ticket.event}, at #{ticket.venue}." +
    "The performer is #{ticket.performer}." +
    "The seat is #{ticket.seat}, " +
    "and it costs $#{"%.2f." % ticket.price}"