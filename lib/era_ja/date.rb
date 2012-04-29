# -*- coding: utf-8 -*-
require 'date'

module EraJa
  module Date
    def to_era
      if self < ::Date.new(1868,9,8)
        raise "#to_era is expeted later in 1968,9,8"
      elsif self < ::Date.new(1912,7,30)
        "M#{year - 1867}.#{month}.#{day}"
      elsif self < ::Date.new(1926,12,25)
        "T#{year - 1911}.#{month}.#{day}"
      elsif self < ::Date.new(1989,1,8)
        "S#{year - 1925}.#{month}.#{day}"
      else
        "H#{year - 1988}.#{month}.#{day}"
      end
    end
  end
end

class Date
  include EraJa::Date
end