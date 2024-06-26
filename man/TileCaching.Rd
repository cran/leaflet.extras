% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TileLayer.PouchDBCached.R
\name{enableTileCaching}
\alias{enableTileCaching}
\title{Enables caching of Tiles}
\usage{
enableTileCaching(map)
}
\arguments{
\item{map}{The leaflet map}
}
\description{
Enables caching of tiles locally in browser. See \url{https://github.com/MazeMap/Leaflet.TileLayer.PouchDBCached} for details. In addition to invoking this function, you should also pass \code{useCache=TRUE} & \code{crossOrigin=TRUE} in the \code{\link[leaflet]{tileOptions}} call and pass that to your \code{\link[leaflet]{addTiles}}'s \code{options} parameter.
}
\examples{
leaflet() \%>\%
  enableTileCaching() \%>\%
  addTiles(options = tileOptions(useCache = TRUE, crossOrigin = TRUE))

## for more examples see
# browseURL(system.file("examples/TileLayer-Caching.R", package = "leaflet.extras"))
}
