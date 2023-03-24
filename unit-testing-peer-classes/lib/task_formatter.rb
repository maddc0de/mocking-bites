class TaskFormatter
  def initialize(task) # task is an instance of Task
    @task = task
    # binding.irb
  end

  def format
    @task.complete ? "[x] #{@task.contents}" : "[ ] #{@task.contents}"
  end
end