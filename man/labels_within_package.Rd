% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mydata.R
\docType{data}
\name{labels_within_package}
\alias{labels_within_package}
\title{labels_within_package: Some labels package auther defined to make his plot, mainly serve the paper publication.}
\format{
An object of class \code{list} of length 20.
}
\usage{
labels_within_package
}
\description{
It contains a list that match each feature to its labels. It is used in the function \code{\link{label.feature}}.
}
\details{
labels_within_package <- list(
dayint = "Time trend",
diffcwv = "delta CWV (cm)",
date = "",
Column_WV = "MAIAC CWV (cm)",
AOT_Uncertainty = "Blue band uncertainty",
elev = "Elevation (m)",
aod = "Aerosol optical depth",
RelAZ = "Relative azimuth angle",
DevAll_P1km = expression(paste("Proportion developed area in 1",km^2)),
dist_water_km = "Distance to water (km)",
forestProp_1km = expression(paste("Proportion of forest in 1",km^2)),
Aer_optical_depth = "DSCOVR EPIC MAIAC AOD400nm",
aer_aod440 = "AERONET AOD440nm",
aer_aod500 = "AERONET AOD500nm",
diff440 = "DSCOVR MAIAC - AERONET AOD",
diff440_pred = "Predicted Error",
aer_aod440_hat = "Predicted AERONET AOD440nm",
AOD_470nm = "AERONET AOD470nm",
Optical_Depth_047_t = "MAIAC AOD470nm (Terra)",
Optical_Depth_047_a = "MAIAC AOD470nm (Aqua)"
)
}
\references{
\doi{https://doi.org/10.5281/zenodo.3568449}
}
\keyword{Labels}
