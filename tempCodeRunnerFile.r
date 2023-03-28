pancake_meal <- function (N, honey_price) {
    ingredients <- c(500 / 1000, 2 / 10, 200 / 2000, 30 / 125, 30 / 1000, 1 / 2) / 4
    prices <- c(25, 30, 40, 40, 90, honey_price)
    return(sum(N * ingredients * prices))
}

performance_change <- function (old_year, new_year) {
    annual_gross_values <- c(4167, 3140, 3587, 5043, 3917, 4901, 5123, 6410, 6398, 7891)
    names(annual_gross_values) <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022")
    new_year_value <- unname(annual_gross_values[new_year])
    old_year_value <- unname(annual_gross_values[old_year])
    return(round((new_year_value - old_year_value) / old_year_value * 100, digits=2))
}

dangerous_tap_water <- function (contamination_rates, threshold) {
    dangerous_tap_water_days <- 0
    for (percentage in contamination_rates) {
        if (percentage >= threshold) {
            dangerous_tap_water_days <- dangerous_tap_water_days + 1
        }
    }
    return(dangerous_tap_water_days)
}

tallest_and_shortest <- function (heights) {
    sorted <- sort(heights)
    tallest <- names(sorted)[length(sorted)]
    shortest <- names(sorted)[1]
    character <- c(tallest, shortest)
    names(character) <- c("tallest", "shortest")
    return(character)
}

chess_king <- function(x, y){
    x_direction <- c(x - 1, x, x + 1)
    y_direction <- c(y - 1, y, y + 1)
    possibilities <- 0
    for (i in x_direction){
        for (h in y_direction){
            if (1 <= i && i <= 8 && 1 <= h && h <= 8) {
                possibilities <- possibilities + 1
            }
        }
    }
    return(possibilities - 1)
}