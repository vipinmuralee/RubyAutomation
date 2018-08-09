module Comp
  class << self
    include PageObject::PageFactory
    attr_accessor :browser
  end
end
