module ApplicationHelper
    def default_date(date)
      date.in_time_zone('Brasilia').strftime("%d/%m/%Y %H:%M:%S (%Z)")
    end
end
