
# clear variables and close windows
rm(list = ls(all = TRUE))
graphics.off()

# Black-Scholes Option 
# Value Call value is returned in values[1], put in values[2]
blackscholes = function(S, X, rf, T, sigma) {
    values = c(2)
    d1 = (log(S/X) + (rf + sigma^2/2) * T)/sigma * sqrt(T)
    d2 = d1 - sigma * sqrt(T)
    values[1] = S * pnorm(d1) - X * exp(-rf * T) * pnorm(d2)
    values[2] = X * exp(-rf * T) * pnorm(-d2) - S * pnorm(-d1)
    values
}
