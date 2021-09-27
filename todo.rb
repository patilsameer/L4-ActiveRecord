require 'active_record'

#class Todo < ActiveRecord::Base
#end
class Todo < ActiveRecord::Base
    def due_today?
      due_date == Date.today
    end
    def overdue?
        due_date < Date.today
    end

    def due_later?
        due_date > Date.today
    end
  
    def to_displayable_string
      display_status = completed ? "[X]" : "[ ]"
      display_date = due_today? ? nil : due_date
      "#{id} #{display_status} #{todo_text} #{display_date}"
    end
   
    def self.to_displayable_list
        all.map {|todo| todo.to_displayable_string }
    end#to_displayable_list_endshere

    def self.add_task(h)
        #puts h
        Todo.create(h);
    end
     
    def self.show_list
        puts "Due Today"
        all.map {|todo|
            if todo.due_today?
                puts todo.to_displayable_string
            
            end
            }

        puts "Overdue"
        all.map {|todo|
            if todo.overdue?
                puts todo.to_displayable_string
            end
            }
        puts "Due Later"
        all.map {|todo|
            if todo.due_later?
                puts todo.to_displayable_string
             end
            }
            
            #  puts "working agian"
    end


end#class ends here