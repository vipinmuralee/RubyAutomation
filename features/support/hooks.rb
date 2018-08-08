require 'watir'
require 'rspec'
require 'page-object'
require 'data_magic'
require 'cucumber'

World(PageObject::PageFactory)

Before do |scenario|
  $feature = scenario.feature.name
  $scenario = scenario.title

  # scenario.steps.each do |a|
  #   @steps.push (a.keyword + " " + a.name)
  # end
end

Before do
  begin
    @datafile = $feature.split(" ")[0]
    @scenario_data = $scenario.split(" ")[0]
    "#{@datafile}.yml"
    ymlDir = ""
    Dir.glob(File.join('features/support/data',"**/#{@datafile}.yml")).each do |file|
      ymlDir = File.absolute_path(file)
      break
    end
    DataMagic.yml_directory = File.dirname(ymlDir)
    DataMagic.load "#{@datafile}.yml"
  rescue => e
    puts e
  end
  $data = TestData.new.load_data(@scenario_data)
  $runtiime_data = {}
end
