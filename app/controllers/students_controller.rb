class StudentsController < ApplicationController

def index
    info = Student.all 
    render json: info
end

def grades
    #byebug
    list = Student.all.order(grade: :desc)
    render json: list
end

def highest_grade
    best = list = Student.all.order(grade: :desc).first
    render json: best
end

end
