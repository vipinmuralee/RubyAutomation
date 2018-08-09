module Generic
  include PageObject

    def self.enterText(strObj, strVal)
      self.send  "#{strObj}=", "#{strVal}"
    end

end
