require 'pry'
# your code goes here
def begins_with_r(tools_array)
  truth_values = []
  tools_array.each do |word|
    if word[0] == "r"
      truth_values.push("yes")
    else
      truth_values.push("no")
    end
  end
  if truth_values.include?("no")
    return false
  else
    return true
end
end


def contain_a(array)
  new_array = []
  array.each do |element|
    element.each_char do |letter|
      if letter == "a"
        new_array.push(element)
      end
    end
  end
    new_array
end


def first_wa(array)
  wa_word = ""
  array.each do |element|
    if element[0] == "w" && element[1] == "a"
      wa_word = element
      break
    end
  end
  wa_word
end


def remove_non_strings(array)
  new_array = []
  array.map do |element|
    if element == element.to_s
      new_array.push(element)
    end
  end
  new_array
end


def count_elements(array)
  new_array = []
  array.each do |element|
    new_hash = Hash.new
    c = array.count(element)
    new_hash = {:name => element[:name], :count => c}
      if new_array.include?({:name => element[:name], :count => c}) == false
        new_array.push(new_hash)
      end
    end
  new_array
end


def merge_data(keys, data)
  new_array = []
  new_hash = {}
  keys.each do |hash|
    new_hash = hash
    new_array.push(new_hash)
  end
  data.each do |hash|
    hash.each do |key, data|
      data.each do |second_key, value|
        new_array.each do |element|
          if key == element[:first_name]
            element[second_key] = value
          end
        end
      end
    end
  end
  new_array
end

def find_cool(array)
  new_hash = {}
  new_array = []
  array.each do |element|
    if element[:temperature] == "cool"
      new_hash = element
      new_array.push(new_hash)
    end
  end
  new_array
end

def organize_schools(schools)
  new_hash = {}
  nyc_array = []
  sf_array = []
  chi_array = []
  schools.each do |school_name, data|
    data.each do |key, value|
      if value == "NYC"
        nyc_array.push(school_name)
        new_hash[value] = nyc_array
      elsif value == "SF"
        sf_array.push(school_name)
        new_hash[value] = sf_array
      elsif value == "Chicago"
        chi_array.push(school_name)
        new_hash[value] = chi_array
      end
      #new_hash["NYC"] = nyc_array
      #new_hash["SF"] = sf_array
      #new_hash["Chicago"] = chi_array
    end
  end
  new_hash
end
