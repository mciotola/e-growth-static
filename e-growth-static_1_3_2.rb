#########################################################
#                                                       #
# EXPONENTIAL GROWTH SIMULATOR  version 1.03            #
#                                                       #
# By Mark Ciotola; created 2011, last rev 22 Mar 2013   #
#                                                       #
#########################################################

# Version 1.03.02  |  Written in Ruby 1.9.2

# The purpose of this simulation is to both show the 
# explosive nature of exponential growth, and to also 
# demonstrate the use of the Ruby programming language
# for such simulations.

# BANNER

puts " \n"
puts " +------------------------------------------------------+"
puts " |                                                      |"
puts " | EXPONENTIAL GROWTH SIMULATOR  version 1.03           |"
puts " |                                                      |"
puts " +------------------------------------------------------+"
puts "\n"
puts " This simulation compares linear to pure exponential"
puts " growth over time. Note the explosive nature of"
puts " exponential growth. Both start at 1.000 in Period 1."


# INITIALIZE PARAMETERS

  period = 1
  lineargrowth = 1.0
  exponentialgrowth = 1.0
  finalperiodlimit = 22


# RUN SIMULATION

  puts "\n\n"
  puts "PERIOD\t\tLINEAR GROWTH\t\tEXPONENTIAL GROWTH"
  puts "------\t\t-------------\t\t------------------ \n"

  while period < finalperiodlimit do
    lineargrowth = 1.0 * period
    exponentialgrowth = Math.exp(period - 1)
	perioddisplay = period - 1

    # Display variables with type conversions

      per = perioddisplay.to_s
      lin = lineargrowth.to_s
      exp = exponentialgrowth.to_s
      
    # Output

	  periodstring = (" %2d\t\t%11.3f\t\t %14.3f")
      puts sprintf periodstring, per,lin,exp

    period = period + 1
  
  end

# REPORT SIMULATION COMPLETION

  puts "\n Done. \n"
  puts "\n"
