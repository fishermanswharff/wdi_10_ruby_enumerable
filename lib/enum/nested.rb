# Don't modify the Person class
class Person
  attr_accessor :name, :age, :gender, :years_language_experience, :favorite_foods

  def initialize(name:, age:, gender:, years_language_experience:{}, favorite_foods:[])
    @name = name
    @age = age
    @gender = gender
    @years_language_experience = years_language_experience
    @favorite_foods = favorite_foods
  end
end

class People
  def initialize(people_array)
    @people = people_array
  end

  def ages_sum
    @people.reduce(0) { |memo,item| memo += item.age }
  end

  def average_age
    ages_sum / @people.length
  end

  def total_years_programming_experience_for_all_languages
    @people.map { |person| person.years_language_experience }.each_with_object([]) { |i,a| i.each_value { |value| a << value } }.reduce { |sum,i| sum += i }
  end

  def favorite_food_frequency
    @people.map { |person| person.favorite_foods }.flatten.each_with_object(Hash.new(0)) { |food,frequency| frequency[food] += 1 }
  end

  def total_combined_years_language_experience(language)
    @people.map(&:years_language_experience).map{ |experience| experience[language] || 0 }.inject(&:+)
  end

  def person_with_most_experience_in_language(language)
    
  end

  private

  def people
    @people
  end

end