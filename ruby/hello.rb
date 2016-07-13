def hello(name, times)
    $i = 0
    while $i < times do
        puts %Q{Hello #{name} (count #{$i + 1})}
        $i += 1
    end
end

hello('Alex', 5)
