module Generic
  include PageObject

    def enterText(strObj, strVal)
      self.send  "#{strObj}=", "#{strVal}"
    end

end
