# code here!
require 'pry'

class School

  attr_reader :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    if roster[grade]
      self.roster[grade] << name
    else
      self.roster[grade] = [name]
    end
  end

  def grade(search_grade)
    self.roster[search_grade]
  end

  def sort
    self.roster.map { |k,v| [k,v.sort] }.to_h
  end

end
