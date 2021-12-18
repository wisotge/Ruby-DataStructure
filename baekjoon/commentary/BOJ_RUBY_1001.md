## 초기 풀이
------
``` ruby
inputs = gets.chomp.split(" ").map{ |s| s.to_i }
puts inputs.first - inputs.last
```
<br />


## 개선된 풀이
------
``` ruby
puts a.split.map(&:to_i).inject(:-)
```
<br />



## 해설
-----
Map method의 경우 Array와 같은 enumerable 객체의 모든 원소에서 블록 코드를 실행시키는데 사용하는 대표적인 메소드이다.


``` ruby
class Foo
  def method_name
    puts "method called for #{object_id}"
  end
end

[Foo.new, Foo.new].map do |element| 
  element.method_name
end
```

위 코드와 같이 단순히 메소드를 각 element에서 실행시킨다면 & idiom을 사용할 수 있다. 

``` ruby
[Foo.new, Foo.new].map(&:method_name)
```

루비에서 &를 사용하게 될 경우 해당 블록을 proc 객체로 간주하게 된다.
만약 proc객체가 아니라면 to_proc 메소드를 호출하여 proc으로 변환시킨다.

즉, <strong>&:method_name</strong> -> <strong>:method_name.to_proc</strong>으로 변환된다고 볼 수 있다.
<br/><br/><br/><br/>


## 루비 proc객체란?
------
block을 객체화 한것이라고 뽈 수 있다. procedure의 줄임말로 어떠한 처리 과정을 담고 있다는 의미를 내포하고 있다.
<br/><br/>

### 왜 proc 객체를 사용해야 하나요?
block을 객체화하면 변수에 담을 수 있는게 가장 큰 장점이다.
block자체를 특정 메소드에 넘길때에는 기본적으로 하나만 넘겨줄 수 있다. 하지만 proc 객체를 이용할 경우 여러가지의 메소드를 매개 변수로 넘겨줄 수 있다는 장점이 있다.
<br/><br/>

### 어떻게 proc 객체를 실행할 수 있나요? 
```ruby
p = Proc.new { puts "hi~" }

p.call()
# hi~

p.yield()
# hi~
```
위와 같이 call 또는 yield 메소드를 통해서 procedure를 호출할 수 있다.





