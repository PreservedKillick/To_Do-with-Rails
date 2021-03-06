To Do App - Ruby on Rails
======================

March 31, 2014

Epicodus: Week7, Day1 (part 2)

First day of Ruby on Rails (no magic methods yet)

*******************
Lesson

Make a To Do list app, with just a single model task model. 

Don't worry about having a checkbox for done - save marking tasks as done or not until the next step.

On the index page, let users mark tasks as done without deleting them. Here's an example of the how to do this:

      <form action="/tasks/<%= @task.id %>" method="post">
        <input name="_method" type="hidden" value="patch">
        <input name="task[done]" type="hidden" value="true">
        <button>Mark done</button>
      </form>

This will display a button on the page that submits a PATCH request to update the task's done attribute to true.

On your view, display done tasks and not done tasks under separate headers. 

Your views should contain no application logic, and should never access your classes directly - in other words, don't put something like Task.where(:done => false) into your views. Instead, create methods in your model for Task#done and Task#not_done, and then call those methods in the view.
