#########################################################
#                                                       #
# Exponential Growth Simulator version 1.03             #
#                                                       #
# By Mark Ciotola; created 2011, last rev 17 Oct 2012   #
#                                                       #
#########################################################

# Initialize parameters

  period = 1
  lineargrowth = 1.0
  exponentialgrowth = 1.0

# Run Simulation

  puts "\n\n"
  puts "PERIOD\t\tLINEAR GROWTH\t\tEXPONENTIAL GROWTH"
  puts "------\t\t-------------\t\t------------------ \n"

finalperiodlimit = 21

while period < finalperiodlimit do
  lineargrowth = 1.0 * period
  exponentialgrowth = Math.exp(period)

  # display variables with type conversions

  per = period.to_s
  lin = lineargrowth.to_s
  exp = exponentialgrowth.to_s
  periodstring = ("%2d\t\t%11.3f\t\t%1.3f")

  puts sprintf periodstring, per,lin,exp


  period = period + 1
  
end


puts "\n Done. \n"
