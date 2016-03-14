def get_grade(grades)
  average_grade = grades.reduce(0) { |sum, element| sum + element } / grades.length

    if average_grade >= 90
     p "A"
    elsif average_grade < 90 && average_grade >= 80
     p "B"
    elsif average_grade < 80 && average_grade >= 70
     p  "C"
    elsif average_grade < 70 && average_grade >= 60
     p "D"
    elsif average_grade < 60
     p "F"
    end

end
  get_grade([70,90,100,60,86,79,20,20])