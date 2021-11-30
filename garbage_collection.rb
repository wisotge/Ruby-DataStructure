# Ruby는 Garbage Collection 이라는 기능을 이용하여 
# Heap 메모리에 할당된 object가 해제된다.

# Object memory가 해제 안되는 경우는 
# Constant Variable(글로벌 변수, 오브젝트)이 해당 object를 참조하고 있으면, (Rails에서 메모리를 많이 잡아먹는 경우)
# 절대 Garbage collect 되지 않는다.

GC.start
before = GC.stat(:total_freed_objects)

RETAINED = [] 

# 10000.times do
#   RETAINED << "I am Object"
# end 

# 10000.times do
#   foo = "I am Object"
# end 

10000.times do
  @i_foo = "I am Object"
end 

GC.start
after = GC.stat(:total_freed_objects)

puts "Objects Freed: #{after - before}"

# global Variables, Modules, class가 참조하는 오브젝트는 Garbage Collect될 수 없음

# Retained 배열이 있는 코드에서 메모리 사용을 줄이려면 -> freeze method를 이용한다.
