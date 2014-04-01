class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @task = Task.new
    render('tasks/index.html.erb')
  end

  # def done
  #   @undone_task = Task.find(params[:id])
  #   @undone_task.update(:done => true)
  #   render('tasks/done.html.erb')
  # end
  # #Spyder Monkee fixed our done!!!!

  # def undo
  #   @done_task = Task.find(params[:id])
  #   @done_task.update(:done => false)
  #   render('tasks/undo.html.erb')
  # end

  def show
    @task = Task.find(params[:id])
    render('tasks/show.html.erb')
  end

  def create
    @task = Task.new( :description => params[:description],
                      :due_date => params[:due_date],
                      :done => false)
    if @task.save
      render('tasks/success.html.erb')
    else
      @tasks = Task.all
      render('tasks/index.html.erb')
    end
  end

  def edit
    @task = Task.find(params[:id])
    render('tasks/edit.html.erb')
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(:description => params[:description],
                    :due_date => params[:due_date],
                    :done => params[:done])
      render('tasks/success.html.erb')
    else
      render('tasks/edit.html.erb')
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    render('tasks/destroy.html.erb')
  end
end
