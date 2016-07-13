def hello(options={})
    $i = 0
    while $i < options[:times] do
        puts %Q{Hello #{options[:name]} (count #{$i + 1})}
        $i += 1
    end
end

hello(:name =>'Alex', :times => 5)
