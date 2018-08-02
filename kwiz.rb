class User
  attr_accessor :name
  def initialize(name)
    @name = name
    @sent = []
    @inbox = []
  end
  def sent
    @sent
  end
  def inbox
    @inbox
  end
end
$john= User.new('john')
$jenn= User.new('jenn')
def message(mess,sender,recipient)
  recipient.inbox << [mess, Time.new.to_s]
  sender.sent << [mess, Time.new.to_s]
end
message("whats up foo", $john,$jenn)
message("yo", $john,$jenn)
message("you up", $john,$jenn)
message("nothing", $jenn,$john)
message("sup", $jenn,$john)
message("yeah y", $jenn,$john)
p $jenn
p $john



# hash = { 'a' => 1, 'b' => 2, 'c' => 3, 'd' => [[4, 5, 6], [7,8,9]] }
# p hash
# p hash.flatten
# p hash.flatten(2)
# p hash.flatten(3)
