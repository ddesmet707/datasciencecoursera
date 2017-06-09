pollutantmean <- function(directory, pollutant, id) {
   sum = 0 # Finding the sum of values before finding average
   for (count in 1:length(id)) { #loop over number of indices
      temp = read.csv(list.files("specdata",full.names=TRUE)[id][count])
      sum = sum + mean(temp[,pollutant], na.rm = TRUE) # sum comes back here
   }
   sum / length(id) # now find the final average
}
   
   