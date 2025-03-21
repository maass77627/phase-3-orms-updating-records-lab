require_relative "../config/environment.rb"

class Student

  attr_accessor :name, :grade
  attr_reader :id
  
  def initialize(name, grade, id=nil)
    @name = name
    @grade = grade
    @id = id
  end 

  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      name TEXT, 
      album TEXT
    )
    SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = <<-SQL
    DROP TABLE IF EXISTS students
    SQL
    DB[:conn].execute(sql)
  end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  def save
    sql = <<-SQL
    INSERT INTO students (name, grade)
    VALUES (?, ?)

    SQL
    DB[:conn].execute(sql, self.name, self.grade)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]

  end 

  def save 
    if self.id
      sql = <<-SQL
      


  end

  def create

  end

  def new_from_db

  end

  def find_by_name

  end
  end
