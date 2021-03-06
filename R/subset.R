#    Copyright 2015 Province of British Columbia
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.

#' Subset fitdists
#'
#' @param x The object to subset.
#' @param select A character vector of the distributions to select.
#' @param ... Unused
#' @export
#' @examples
#' subset(boron_dists, c("gamma", "weibull"))
subset.fitdists <- function(x, select = names(x), ...) {
  check_vector(select, "", unique = TRUE)
  check_names(x, select)
  class <- class(x)
  x <- x[names(x) %in% select]
  class(x) <- class
  x
}
