desc "Send Weekly ENS Report"
task send_weekly_report: :environment do
    puts "You are running this rake task in the #{Rails.env} environment."
    Ticket.send_weekly_report
end

