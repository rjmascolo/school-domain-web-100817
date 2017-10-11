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
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(search_grade)
    @roster[search_grade]
  end

  def sort
    @roster.map { |k,v| [k,v.sort] }.to_h
  end

end
