# def is_leap_year?(year)
#   if year % 4 == 0
#     if year % 100 == 0
#       if year % 400 == 0
#         return true
#       else
#         return false
#       end
#     else
#       return true
#     end
#   else
#     return false
#   end
# end

def is_leap_year?(y)
  y % 400 == 0 || ( y % 4 == 0 && y % 100 != 0)
end