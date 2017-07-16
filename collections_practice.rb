# your code goes here
def begins_with_r(input)
  newarray = []
  input.each {|e| e.start_with?("r") ? newarray << e : nil}
  newarray.length == input.length ? true : false
end

def contain_a(input)
  newarray = []
  input.each {|e| e.include?("a") ? newarray << e : nil}
  newarray
end

def first_wa(input)
  input.select{|e| e[0] == 'w' && e[1] == 'a'}[0]
end

def remove_non_strings(input)
  input.delete_if{|e| e.to_s != e }
end

def count_elements(input)
  newarray = input.uniq
  newarray.each do |person|
    count = 0
    input.each do |e|
      if e == person
        count += 1
      end
    end
    person[:count] = count
  end
  newarray
end

def merge_data(keys, data)
  newhash = Hash.new(0)
  newary = []
  data.each do |person|
    person.each do |key1, value1|
      keys.each do |names|
        names.each do |key2, value2|
          if value2 == key1
            newhash = names.merge(value1)
            newary << newhash
          end
        end
      end
    end
  end
  newary
end

def find_cool(input)
  array = []
  input.each do |e|
    e.each do |k, v|
      if v == "cool"
        array << e
      end
    end
  end
  array
end

def organize_schools(input)
  newhash = Hash.new(0)
  input.each do |key1, value1|
    value1.each do|key2, value2|
      newhash[value2] = [] if !newhash.keys.include?(value2)
      newhash[value2] << key1
    end
  end
  newhash
end
