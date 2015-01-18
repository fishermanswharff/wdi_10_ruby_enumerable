class Array

  def sum_of_numeric_elements
    self.map { |item| item if item.class == Float || item.class == Fixnum }.compact.reduce(0) { |memo,num| memo += num }
  end

  def product_of_numeric_elements
    self.map { |item| item if item.class == Float || item.class == Fixnum }.compact.reduce(1) { |memo,num| memo * num }
  end

  def even_numeric_elements
    self.map { |item| item if item.class == Fixnum }.compact.map { |i| i if i % 2 == 0 }.compact
  end

  def odd_numeric_elements
    self.map { |item| item if item.class == Fixnum }.compact.map { |i| i if i % 2 != 0 }.compact
  end

  def string_elements
    self.map { |item| item if item.class == String }.compact
  end

  def lowercase_string_elements_as_uppercase
    self.map { |item| item if item.class == String }.compact.map { |item| item if item.match(/\b[a-z]/) }.compact.map(&:capitalize)
  end

  def capitalized_elements
    self.map { |item| item if item.class == String }.compact.map { |item| item if item.match(/\b[A-Z]/) }.compact
  end

end
