module ApplicationHelper
    def time_format(inst)
        inst.week_day.day + ': ' + inst.start + ' to ' + inst.end + ' utc ' + 'with ' + inst.coach.name 
    end
end
