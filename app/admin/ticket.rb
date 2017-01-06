ActiveAdmin.register Ticket do

	permit_params :event_status, :event_severity, :event_category, :problem_statement, :additional_notes, :bridge_number, :heat_ticket_number, :customers_affected, :property_ids => []

	form do |f|
		f.inputs "Ticket Details" do
			f.input :event_status
	      	f.input :event_severity
	      	f.input :event_category
	      	f.input :problem_statement
	      	f.input :additional_notes
	      	f.input :bridge_number
	      	f.input :heat_ticket_number
	      	f.input :customers_affected
	      	f.input :properties, as: :check_boxes	      	
	    end
		f.button "Update This Ticket"
	end

	csv do
    	column :heat_ticket_number
    	column :event_category
    	column :event_severity
    	column :customers_affected
    	column :services_affected
    	column :problem_statement
    	column :created_at
    	column :completed_at
    	column(:duration) {|t| 
    		if !t.completed_at.nil?
    			distance_of_time_in_words(t.completed_at - t.created_at)
    		end
    	}	
    	column :resolution
    	column :event_status
    	column :bridge_number
    	column :additional_notes
  	end

end
