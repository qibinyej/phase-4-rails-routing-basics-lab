class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        # byebug
        grades = Student.all.grade
        render json: students.order(grade: :desc)
    end
end
